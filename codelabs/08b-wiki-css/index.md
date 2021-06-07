---
id: 08b-wiki-css
summary: Add some personal touch to your Wiki with CSS styles
authors: Jack Rosenthal
source: 1vkfhGDiAPngVsKpx-f9MPgf3JIh5J_ihps6EoNSgowo
duration: 0

---

# Wiki CSS Styling (Milestone 6)




## Overview



In this milestone, you'll add some personal styling to your group's wiki using CSS.

It is highly recommended to use pair programming for this milestone with your group to get experience using the Driver / Navigator model.

### Prerequisites

* You must have completed Milestone 3 with your group.

### What you'll need

* Google account
* GitLab account
* Web browser (Google Chrome recommended)

### What you'll learn

* How to integrate CSS into a flask project


## Getting started



Create a static directory next to your Wiki's code, and add a file `main.css`.

<img src="img/433d271d836c227d.png" alt="433d271d836c227d.png"  width="192.00" />

Put a simple comment in the CSS source code:

```console
/* This is where my CSS will go! */
```

Run your flask server and navigate to `/static/main.css`. You should be able to observe your comment served in this file.


## Linking the CSS to the HTML



Edit your template for page views. Add the following code to link the CSS to the HTML.

```console
<link rel="stylesheet" href="/static/main.css" />
```


## Add a background color or image



To test that the CSS link is working, add a background color or image to your `main.css` file. Observe that your browser shows the expected background color or image.

If you choose a dark background color, you may need to adjust the text color so it's readable. For example, if you chose a dark grey background, then white or light grey text may be the most readable.


## [Optional] Add Bulma CSS to your project



Optionally, you can add Bulma CSS to your project using the following HTML code:

```console
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.2/css/bulma.min.css">
```

If you do this and **make use of at least one Bulma feature or component**, we will give you extra credit.


## Requirements



### 1 - static/main.css exists

### 2 - background color or image is set

* We will test by opening the browser and looking at your site.
* If a dark background was selected, you must adjust the text color so it's visible, for full credit.

### 3 - Extra Credit

* For extra credit, you may add Bulma CSS to your project and make use of at least one feature or component.


## Grading rubric



Remember: to receive a grade, you must submit a peer feedback form indicating which work you did and which was done by your teammates. Non-coding tasks such as help debugging also counts towards participation. This link will be generated and emailed to you after the due date.

* 50% - Requirement (1) -- static/main.css exists
* 50% - Requirement (2) -- background color
* 3% (extra credit) -- bulma CSS


