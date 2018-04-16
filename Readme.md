# ASPxPopupControl - How to resize the popup according to the size of its content


<p>By default, the <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxPopupControl.class">ASPxPopupControl</a> control has a fixed size. However, there are a lot of tasks that require resizing the control according to the size of its content page.<br>The main problem in this situation is to "catch" the moment when this page and all its controls are loaded and calculate their sizes. In this sample, the problem is solved in the following way:<br>1) The ASPxPopupControl control has the client-side event <strong>Init</strong>, whose <strong>OnPopupInit</strong> event handler is used to get an iframe element of the popup control and then attach the <strong>OnContentLoaded</strong> event handler to the <strong>Load</strong> event of this element.<br>2) The <strong>OnContentLoaded</strong> event handler is used to calculate width and height of the content page which is placed inside the iframe element and set the size of the ASPxPopupControl control in accordance with the calculated width and height.</p>

<br/>


