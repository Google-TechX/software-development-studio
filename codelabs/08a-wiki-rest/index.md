---
id: 08a-wiki-rest
summary: Make a simple JSON REST API to view pages on your wiki
authors: Jack Rosenthal

---

# Wiki REST API




## Overview



In this codelab, you'll add a simple REST API into your wiki to retrieve the contents of pages programmatically.

Adding an API to your wiki opens the doors for countless projects that could make use of your wiki. For example, a data engineer could use it to analyze which pages link to which, or a creative programmer could use it to download and print pages on their printer.

You'll be working on your *own wiki repository*, not as a merge request (like you're working on for editing right now).

### Prerequisites

* Using Cloud Shell and Cloud Shell Editor ( [codelab](https://google-techx.github.io/software-development-studio/01a-cloud-shell/?index=/software-development-studio/#0))
* Using Git ( [codelab](https://google-techx.github.io/software-development-studio/01b-git/?index=/software-development-studio/#0))
* Wiki Milestone 3

### What you'll need

* Google account
* GitLab account
* Web browser (Google Chrome recommended)

### What you'll learn

* Develop and test a simple REST API


## API paths and version



It's common practice to add version information into an API, that way changes to the API can be made without needing to adjust all the users immediately.

For example, suppose you create an API for a weather website. Your API looks as follows:

```console
GET /api/v1/getweather?zipcode=12345

{
    "current_temperature_c": 27,
    "current_condition": "sunny",
    "forecast": [
        {...},
        {...}
    ]
}
```

After releasing your API, you find out users want detailed information at each sensor location, instead of an overall summary of the temperature at a single station. This new version requires passing GPS coordinates instead of a ZIP code, as we need to find the closest station to a certain spot. We can now introduce this without breaking existing users by adjusting the new version to use routes under `/api/v2`, and users of the old API will continue to function.

### Your Wiki

While we don't expect you to ever make more than one version of your Wiki API in this course, it's still good practice to add these API versions, as we like to replicate real-world practices as much as possible in this course.

For this activity, you'll add one API method, to get the contents of a page. Your route for this API should be:

```console
/api/v1/page/<pagename>/get
```


## API functionality



As explained in the previous section, you'll add a single API method to get the contents of a page.

We imagine that some developers will want the raw (unformatted) source of a page, and some developers will want the HTML source for a page. Perhaps some applications may require both at the same time...

We will add one (optional) parameter to the query string of our API: `format`. If `format` is set to `raw`, our response will only include the raw unformatted source in the JSON (to save time rendering the source and bytes in the response). If `format` is set to `html`, we will only give the HTML format in the JSON. Otherwise, if unset, we will give both in the JSON.

Additionally, we will always include a boolean field named `success`. If set to `true`, we know it worked. If set to `false`, we know something went wrong, and an error message will be included in the `reason` field.

For example:

```console
GET /api/v1/page/LinuxDistros/get?format=raw

200 OK

{
    "success": true,
    "raw": "There are many Linux distributions.\n\n:: Debian Linux..."
}
```

```console
GET /api/v1/page/LinuxDistros/get?format=html

200 OK

{
    "success": true,
    "html": "<P>There are many Linux distributions.</P><H2>Debian Linux</H2>..."
}
```

```console
GET /api/v1/page/LinuxDistros/get

200 OK

{
    "success": true,
    "raw": "There are many Linux distributions.\n\n:: Debian Linux...",
    "html": "<P>There are many Linux distributions.</P><H2>Debian Linux</H2>..."
}
```

```console
GET /api/v1/page/LinuxDistros/get?format=pdf

400 Bad Request

{
    "success": false,
    "reason": "Unsupported format"
}
```

```console
GET /api/v1/page/LostPage/get

404 Not Found

{
    "success": false,
    "reason": "Page does not exist"
}
```


## Implement the API



In *your own group*'s wiki, add a new route to your wiki application:

```console
@app.route('/api/v1/page/<page_name>/get'):
def page_api_get(page_name):
    format = flask.request.args.get('format', 'all')
    # TODO: implement response
    json_response = {}
    status_code = 200
    return json_response, status_code
```

Now, finish writing this code so it behaves like the examples given in the previous step. Be sure to handle all of these cases:
**Condition** | **Formats returned** | **`success`** | **`reason`** | **HTTP status code**
--- | --- | --- | --- | ---
Page exists, format is not given, or "all" | raw and html | `true` | Not set | 200
Page exists, format is raw | raw | `true` | Not set | 200
Page exists, format is html | html | `true` | Not set | 200
Page exists, format is something else (e.g., "pdf" or "doc") | none | `false` | Unsupported format | 400
Page does not exist | none | `false` | Page does not exist | 404

### Manual Testing

For each of the conditions above, manually test (using your browser) that your code provides the correct response. If any conditions fail to produce the correct response, correct your code.


## [Optional] Automated Tests



If you have time, write an automated test using pytest for your code.


## You're done!



Commit and push all your work.

Check the GitLab Web UI to ensure your groups' repository looks as you expect.


