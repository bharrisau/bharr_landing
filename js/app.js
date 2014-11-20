/* global $,document,console,Parse */
$(document).ready(function() {
  
  var parseAPPID = "HYF7C3QrhUp4u9tH6vtEYYHN0hr4l6UHK5VUvl4j";
  var parseJSID = "MTPbLbgI4NGghqv3wIOS0FJ2VH9B98EfI1kh2HV3";
  
  Parse.initialize(parseAPPID, parseJSID);
  var CommentObject = Parse.Object.extend("CommentObject");
  
  $("#contact-form").submit(function(e) {
    e.preventDefault();
    $("#contact-submit").attr('disabled', 'disabled');

    console.log("Handling the submit");
    //add error handling here
    //gather the form data

    var data = {};
    data.name = $("#contact-name").val();
    data.email = $("#contact-email").val();
    data.comments = $("#contact-message").val();

    var comment = new CommentObject();
    comment.save(data, {
      success:function() {
        console.log("Success");
        $("#message-success").delay(250).fadeIn(250);
      },
      error:function(e) {
        console.dir(e);
      }
    });
    
  });
  
});
