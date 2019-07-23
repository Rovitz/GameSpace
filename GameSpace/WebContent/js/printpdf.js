var doc = new jsPDF();
var specialElementHandlers = {
    '#editor': function (element, renderer) {
        return true;
    }
};

$('#print_btn').click(function () {   
    doc.fromHTML($('#navigation').html(), 15, 15, {
        'width': 400,
            'elementHandlers': specialElementHandlers
    });
    doc.save('sample-file.pdf');
});