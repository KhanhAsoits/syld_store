function addProductToCart(e) {
    let user_id = e.dataset.email;
    let product_id = e.dataset.product;
    let cart_id = e.dataset.cart;

    let data = {
        id: cart_id ? cart_id : "",
        product_id: product_id,
        user_id: user_id,
        quantity: 1
    }


    $.ajax({
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        url: `${window.location.origin}/cart/create`,
        method: "post",
        dataType: "json",
        data: JSON.stringify(data),
        success: (res) => {
            if (res) {
                alert("Add Success!")
                handleLoadCartUI(res.productCarts, res.user)
            }
        },
        error: (res) => {
            console.log(JSON.parse(res))
        }
    })
}

const handleLoadCartUI = (products, user) => {
    let htmls = ''
    console.log(products)
    products.map((val, index) => {
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
                            <a href="javascript:void(0)" onclick="removeFromCart(this,true)" data-user="${user.email}" data-product="${val.id}"><i class="fa fa-trash" style="font-size: 20px"></i></a>
                        </li>
                    </ul>
                </div>
            </div>`
        htmls += html
    }).join("")
    let cart_body = document.getElementById("cart-product")
    if (cart_body !== null) {
        cart_body.innerHTML = htmls
    } else {
        window.location.assign(window.location.href)
    }
    totalProcess_()
    quantityProcess(products.length)
}

function quantityProcess(count) {
    document.getElementById("cart-quantity").textContent = count
    document.getElementById("cart-item").textContent = count > 1 ? count + " items" : count + " item"

}

function totalProcess_() {
    let listPrice = document.querySelectorAll(".content .price")
    let total = document.getElementById("cart-total")

    let amount = 0;

    listPrice.forEach((val, index) => {
        amount += (parseFloat(val.textContent.replace("$", "").trim()) * parseInt(val.dataset.quantity))
    })
    total.textContent = '$' + amount.toString();
}

function processGrandTotal() {
    let list_total = document.querySelectorAll("#cart-detail-table .product-subtotal")
    let grand_total = 0;
    console.log(list_total)
    if (list_total) {
        list_total.forEach((val, index) => {
            grand_total += parseInt(val.textContent.replace("$", "").trim())
        })
        let grand_el = document.querySelector(".grand-total")
        if (grand_el) {
            grand_el.textContent = '$' + grand_total;
        }
    }
}

function totalProcess(self) {
    if (self) {
        let per_price = self.dataset.per;
        let total = self.parentNode.nextElementSibling;
        let amount = per_price * self.value
        total.textContent = `$${amount}`
        processGrandTotal()
    }
}

function removeFromCart(self, dialog = false) {

    if (self) {
        let email = self.dataset.user;
        let product = self.dataset.product;

        if (confirm("Do you really remove  ? ")) {
            const uri = `${window.location.origin}/cart/remove/${product}/${email}`
            $.ajax({
                url: uri,
                method: "post",
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                dataType: "json",
                data: JSON.stringify([]),
                success: (res) => {
                    if (res) {
                        console.log(res)
                        if (dialog) {
                            handleLoadCartUI(res.productCarts, res.user)
                        } else {
                            window.location.assign(window.location.href)
                        }
                        alert("Remove Success!")
                    }
                },
                error: (err) => {
                    console.log(err)
                }
            })
        }
    }
}

processGrandTotal()