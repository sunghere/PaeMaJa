(function ($) {
    "use strict";

   
    $('#galleryModal').on('show.bs.modal', function (e) {
        $('#galleryImage').attr("src", $(e.relatedTarget).data("src"));
    });

})(jQuery);