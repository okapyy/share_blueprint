// $(document).on('turbolinks:load', function() {
//   $(function() {
//     function buildHTML(thumb) {
//       var html = `<img src="${thumb}, alt="preview" width="114 height="80">`
//       return html;
//     }

//     $('#thumb-file').change(function() {
//       var file = $('#thumb-file').files;
//       var fileReader = new FileReader();
//       fileReader.readAsDataURL(file);
//       fileReader.onload = function() {
//         var thumb = this.result
//         var html = buildHTML(thumb)
//         $('#thumb-box').after(html);
//       }
//     });
//   });
// });