$(document).on("change", "#reports_dropdown", function () {
  var state = $(this).val();
  $.ajax({
    url: "/reports",
    type: "get",
    data: { reports: state },
    dataType: "script",
  });
});
