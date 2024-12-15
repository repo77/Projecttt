(function ($) {
    "use strict";
    var mainApp = {
        slide_fun: function () {
            $.ajax({
                url: 'get-slides.php', 
                type: 'GET',
                dataType: 'json',
                success: function (data) {
                    var carouselInner = $('#carousel-example .carousel-inner');
                    var indicators = $('#carousel-example .carousel-indicators');
                    carouselInner.empty(); 
                    indicators.empty(); 

                    data.slides.forEach(function (slide, index) {
                       
                        var activeClass = index === 0 ? 'active' : '';
                        carouselInner.append(`
                            <div class="item ${activeClass}">
                                <img src="${slide.image}" alt="${slide.title}">
                                <div class="carousel-caption">${slide.caption}</div>
                            </div>
                        `);
                        indicators.append(`
                            <li data-target="#carousel-example" data-slide-to="${index}" class="${activeClass}"></li>
                        `);
                    });

                    $('#carousel-example').carousel({
                        interval: 3000 
                    });
                },
                error: function () {
                    console.error('Неуспешно зареждане на слайдовете.');
                }
            });
        },

        dataTable_fun: function () {
            $.ajax({
                url: 'get-table-data.php', 
                type: 'GET',
                dataType: 'json',
                success: function (data) {
                    var table = $('#dataTables-example').DataTable({
                        data: data.rows,
                        columns: [
                            { title: 'ID' },
                            { title: 'Name' },
                            { title: 'DEC' },
                            { title: 'Price' }
                        ]
                    });
                },
                error: function () {
                    console.error('Неуспешно зареждане на данните за таблицата.');
                }
            });
        },

        custom_fun: function () {
            
        }
    };

    $(document).ready(function () {
        mainApp.slide_fun();
        mainApp.dataTable_fun();
        mainApp.custom_fun();
    });
}(jQuery));
