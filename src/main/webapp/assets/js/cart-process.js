function addProductToCart(e){
    let user_id = e.dataset.email;
    let product_id = e.dataset.product;
    let cart_id = e.dataset.cart;

    let data = {
        id : cart_id ? cart_id : "",
        product_id : product_id,
        user_id : user_id,
        quantity:1
    }


    $.ajax({
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        url:`${window.location.origin}/cart/create`,
        method:"post",
        dataType:"json",
        data:JSON.stringify(data),
        success:(res)=>{
            if (res){
                handleLoadCartUI(res.productCarts)
            }
        },
        error:(res)=>{
            console.log(JSON.parse(res))
        }
    })
}
const handleLoadCartUI = (products)=>{
    let htmls = ''
    products.map((val,index)=>{
        console.log(val)
        let html = `<div class="item01 d-flex mt--20">
                <div class="thumb">
                    <a href="">
                        <img src="${val.product.thumbnails[0].path}" alt="product images">
                    </a>
                </div>
                <div class="content d-flex flex-column">
                    <h6>
                        <a href="${window.location.origin}/products/${val.product.slug}">${val.product.product_name}</a>
                    </h6>
                    <span class="price" data-quantity="${val.quantity}">$${val.product.product_price}</span>
                    <span style="font-size: 14px">Quantity : ${val.quantity}</span>
                </div>
                <div class="product_price d-flex justify-content-between">
                    <ul class="d-flex justify-content-end">
                        <li>
                            <a href="#"><i class="fa fa-trash" style="font-size: 20px"></i></a>
                        </li>
                    </ul>
                </div>
            </div>`
        htmls+=html
    }).join("")
    let cart_body = document.getElementById("cart-product")
        if(cart_body!==null){
            cart_body.innerHTML = htmls
        }else {
            window.location.assign(window.location.href)
        }
    totalProcess()
    quantityProcess(products.length)
    alert("Add Success")
}
function quantityProcess(count){
    document.getElementById("cart-quantity").textContent =  count
    document.getElementById("cart-item").textContent = count > 1 ? count + " items" : count + " item"

}
function totalProcess(){
    let listPrice  = document.querySelectorAll(".content .price")
    let total = document.getElementById("cart-total")

    let amount = 0;

    listPrice.forEach((val,index)=>{
        amount+= (parseFloat(val.textContent.replace("$","").trim()) * parseInt(val.dataset.quantity))
    })
    total.textContent = '$' + amount.toString();
}