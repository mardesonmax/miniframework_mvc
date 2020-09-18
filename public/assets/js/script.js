$(document).ready(_ =>{

    const pathName = window.location.pathname

    $('header ul li a').each((e, value) => {

        let href = $(value).attr('href')

        if(href == pathName) {
            $(value).addClass('menu-ativo')
        }
    })

})