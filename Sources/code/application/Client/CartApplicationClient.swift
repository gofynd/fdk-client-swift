import Foundation

extension ApplicationClient {

    public class Cart {
        
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config;
            var ulrs = [String: String]()
            
            ulrs["getCart"] = config.domain.appendAsPath("/service/application/cart/v1.0/detail") 
            
            ulrs["getCartLastModified"] = config.domain.appendAsPath("/service/application/cart/v1.0/detail") 
            
            ulrs["addItems"] = config.domain.appendAsPath("/service/application/cart/v1.0/detail") 
            
            ulrs["updateCart"] = config.domain.appendAsPath("/service/application/cart/v1.0/detail") 
            
            ulrs["updateCartBreakup"] = config.domain.appendAsPath("/service/application/cart/v1.0/detail") 
            
            ulrs["deleteCart"] = config.domain.appendAsPath("/service/application/cart/v1.0/cart_archive") 
            
            ulrs["getItemCount"] = config.domain.appendAsPath("/service/application/cart/v1.0/basic") 
            
            ulrs["getCoupons"] = config.domain.appendAsPath("/service/application/cart/v1.0/coupon") 
            
            ulrs["applyCoupon"] = config.domain.appendAsPath("/service/application/cart/v1.0/coupon") 
            
            ulrs["removeCoupon"] = config.domain.appendAsPath("/service/application/cart/v1.0/coupon") 
            
            ulrs["getBulkDiscountOffers"] = config.domain.appendAsPath("/service/application/cart/v1.0/bulk-price") 
            
            ulrs["applyRewardPoints"] = config.domain.appendAsPath("/service/application/cart/v1.0/redeem/points/") 
            
            ulrs["getAddresses"] = config.domain.appendAsPath("/service/application/cart/v1.0/address") 
            
            ulrs["addAddress"] = config.domain.appendAsPath("/service/application/cart/v1.0/address") 
            
            ulrs["getAddressById"] = config.domain.appendAsPath("/service/application/cart/v1.0/address/{id}") 
            
            ulrs["updateAddress"] = config.domain.appendAsPath("/service/application/cart/v1.0/address/{id}") 
            
            ulrs["removeAddress"] = config.domain.appendAsPath("/service/application/cart/v1.0/address/{id}") 
            
            ulrs["selectAddress"] = config.domain.appendAsPath("/service/application/cart/v1.0/select-address") 
            
            ulrs["selectPaymentMode"] = config.domain.appendAsPath("/service/application/cart/v1.0/payment") 
            
            ulrs["validateCouponForPayment"] = config.domain.appendAsPath("/service/application/cart/v1.0/payment/validate/") 
            
            ulrs["getShipments"] = config.domain.appendAsPath("/service/application/cart/v1.0/shipment") 
            
            ulrs["checkoutCart"] = config.domain.appendAsPath("/service/application/cart/v1.0/checkout") 
            
            ulrs["updateCartMeta"] = config.domain.appendAsPath("/service/application/cart/v1.0/meta") 
            
            ulrs["getCartShareLink"] = config.domain.appendAsPath("/service/application/cart/v1.0/share-cart") 
            
            ulrs["getCartSharedItems"] = config.domain.appendAsPath("/service/application/cart/v1.0/share-cart/{token}") 
            
            ulrs["updateCartWithSharedItems"] = config.domain.appendAsPath("/service/application/cart/v1.0/share-cart/{token}/{action}") 
            
            ulrs["getPromotionOffers"] = config.domain.appendAsPath("/service/application/cart/v1.0/available-promotions") 
            
            ulrs["getLadderOffers"] = config.domain.appendAsPath("/service/application/cart/v1.0/available-ladder-prices") 
            
            ulrs["getPromotionPaymentOffers"] = config.domain.appendAsPath("/service/application/cart/v1.0/available-payment-offers") 
            
            ulrs["checkoutCartV2"] = config.domain.appendAsPath("/service/application/cart/v2.0/checkout") 
            
            self.relativeUrls = ulrs
        }
        public func update(updatedUrl : [String: String]){
            for (key, value) in updatedUrl{
            self.relativeUrls[key] = value
            }
        }
        
        
        
        /**
        *
        * Summary: Get a cart
        * Description: Get details of a cart linked to a specific customer using a unique cart ID. It offers an overview of the items, quantities, prices, and other relevant information associated with the cart.
        **/
        public func getCart(
            xOrderingSource: OrderingSource?,
            id: String?,
            i: Bool?,
            b: Bool?,
            c: Bool?,
            assignCardId: Int?,
            areaCode: String?,
            buyNow: Bool?,
            orderType: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartDetailResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = i {
                xQuery["i"] = value
            }
            
            if let value = b {
                xQuery["b"] = value
            }
            
            if let value = c {
                xQuery["c"] = value
            }
            
            if let value = assignCardId {
                xQuery["assign_card_id"] = value
            }
            
            if let value = areaCode {
                xQuery["area_code"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = orderType {
                xQuery["order_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            if let value = xOrderingSource {
                xHeaders.append((key: "x-ordering-source", value: "\(value.rawValue)"))
            }
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getCart"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CartDetailResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get last modified timestamp of a cart
        * Description: Retrieve the last modified timestamp of the cart using unique cart ID. It indicates the most recent update made to the cart's content or properties.
        **/
        public func getCartLastModified(
            id: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: [String: Any]?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getCartLastModified"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "HEAD",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = data.dictionary
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Add items to a cart
        * Description: Add product items to the customer's existing shopping cart. If there is no existing cart associated with the customer, it creates a new one and adds the items to it.
        **/
        public func addItems(
            xOrderingSource: OrderingSource?,
            i: Bool?,
            b: Bool?,
            areaCode: String?,
            buyNow: Bool?,
            id: String?,
            orderType: String?,
            body: AddCartCreation,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AddCartDetailResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = i {
                xQuery["i"] = value
            }
            
            if let value = b {
                xQuery["b"] = value
            }
            
            if let value = areaCode {
                xQuery["area_code"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = orderType {
                xQuery["order_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            if let value = xOrderingSource {
                xHeaders.append((key: "x-ordering-source", value: "\(value.rawValue)"))
            }
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["addItems"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(AddCartDetailResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update cart items
        * Description: Update cart. Customers can modify added product attributes such as quantity and size, as well as remove items from the cart.
        **/
        public func updateCart(
            xOrderingSource: OrderingSource?,
            id: String?,
            i: Bool?,
            b: Bool?,
            areaCode: String?,
            buyNow: Bool?,
            cartType: String?,
            orderType: String?,
            body: UpdateCartCreation,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: UpdateCartDetailResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = i {
                xQuery["i"] = value
            }
            
            if let value = b {
                xQuery["b"] = value
            }
            
            if let value = areaCode {
                xQuery["area_code"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = cartType {
                xQuery["cart_type"] = value
            }
            
            if let value = orderType {
                xQuery["order_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            if let value = xOrderingSource {
                xHeaders.append((key: "x-ordering-source", value: "\(value.rawValue)"))
            }
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["updateCart"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "PUT",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(UpdateCartDetailResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update store credits into cart and their items
        * Description: Update cart. Customers can adjust the cart breakup by  applying or removing store credits as needed.
        **/
        public func updateCartBreakup(
            xOrderingSource: OrderingSource?,
            id: String?,
            i: Bool?,
            b: Bool?,
            buyNow: Bool?,
            cartType: String?,
            body: UpdateCartBreakup,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: UpdateCartDetailResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = i {
                xQuery["i"] = value
            }
            
            if let value = b {
                xQuery["b"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = cartType {
                xQuery["cart_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            if let value = xOrderingSource {
                xHeaders.append((key: "x-ordering-source", value: "\(value.rawValue)"))
            }
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["updateCartBreakup"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "PATCH",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(UpdateCartDetailResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Delete a cart
        * Description: Delete all items from the user's cart and resets it to its initial state, providing a clean slate for new selections.
        **/
        public func deleteCart(
            id: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: DeleteCartDetailResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["deleteCart"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "PUT",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(DeleteCartDetailResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get a cart items count
        * Description: Get total count of items currently present in the customer's cart.
        **/
        public func getItemCount(
            id: String?,
            buyNow: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartItemCountResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getItemCount"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CartItemCountResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: List available coupons
        * Description: List all available coupons that customer can apply to their carts. It provides details about each coupon, including its code, discount amount, and applicable conditions.
        **/
        public func getCoupons(
            id: String?,
            buyNow: Bool?,
            productSlug: String?,
            storeId: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetCouponResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = productSlug {
                xQuery["product_slug"] = value
            }
            
            if let value = storeId {
                xQuery["store_id"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getCoupons"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetCouponResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Apply coupon
        * Description: Apply a coupon code to the cart to trigger discounts on eligible items.
        **/
        public func applyCoupon(
            xOrderingSource: OrderingSource?,
            i: Bool?,
            b: Bool?,
            p: Bool?,
            id: String?,
            buyNow: Bool?,
            cartType: String?,
            body: ApplyCoupon,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartDetailResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = i {
                xQuery["i"] = value
            }
            
            if let value = b {
                xQuery["b"] = value
            }
            
            if let value = p {
                xQuery["p"] = value
            }
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = cartType {
                xQuery["cart_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            if let value = xOrderingSource {
                xHeaders.append((key: "x-ordering-source", value: "\(value.rawValue)"))
            }
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["applyCoupon"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CartDetailResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Remove coupon
        * Description: Remove an applied coupon from the customer's cart, thereby removing the associated discount from the cart total.
        **/
        public func removeCoupon(
            xOrderingSource: OrderingSource?,
            id: String?,
            buyNow: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartDetailResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            if let value = xOrderingSource {
                xHeaders.append((key: "x-ordering-source", value: "\(value.rawValue)"))
            }
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["removeCoupon"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "DELETE",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CartDetailResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: List bulk discounts
        * Description: List offer discounts with information about quantity and seller. One offer is marked with a "best" flag, indicating it as the best offer among the list.
        **/
        public func getBulkDiscountOffers(
            itemId: Int?,
            articleId: String?,
            uid: Int?,
            slug: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: BulkPriceResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = itemId {
                xQuery["item_id"] = value
            }
            
            if let value = articleId {
                xQuery["article_id"] = value
            }
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
            if let value = slug {
                xQuery["slug"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getBulkDiscountOffers"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BulkPriceResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Use reward points
        * Description: Users can redeem their accumulated reward points and apply them to the items in their cart, thereby availing discounts on their current purchases.
        **/
        public func applyRewardPoints(
            xOrderingSource: OrderingSource?,
            id: String?,
            i: Bool?,
            b: Bool?,
            buyNow: Bool?,
            body: RewardPointCreation,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartDetailResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = i {
                xQuery["i"] = value
            }
            
            if let value = b {
                xQuery["b"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            if let value = xOrderingSource {
                xHeaders.append((key: "x-ordering-source", value: "\(value.rawValue)"))
            }
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["applyRewardPoints"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CartDetailResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get a list of addresses for a customer
        * Description: List all addresses saved by the customer, simplifying the checkout process by offering pre-saved address options for delivery.
        **/
        public func getAddresses(
            cartId: String?,
            buyNow: Bool?,
            mobileNo: String?,
            checkoutMode: String?,
            tags: String?,
            isDefault: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetAddressesResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = cartId {
                xQuery["cart_id"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = mobileNo {
                xQuery["mobile_no"] = value
            }
            
            if let value = checkoutMode {
                xQuery["checkout_mode"] = value
            }
            
            if let value = tags {
                xQuery["tags"] = value
            }
            
            if let value = isDefault {
                xQuery["is_default"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getAddresses"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetAddressesResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Creates a new address for a customer
        * Description: Add a new address to their cart to save details such as name, email, contact information, and address.
        **/
        public func addAddress(
            body: Address,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: SaveAddressResult?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["addAddress"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SaveAddressResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get details for a single customer address
        * Description: Get a specific customer address stored in the system by providing its unique identifier. This API provides detailed information about the address, including the recipient's name, address, city, postal code, and other relevant details.
        **/
        public func getAddressById(
            id: String,
            cartId: String?,
            buyNow: Bool?,
            mobileNo: String?,
            checkoutMode: String?,
            tags: String?,
            isDefault: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: Address?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = cartId {
                xQuery["cart_id"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = mobileNo {
                xQuery["mobile_no"] = value
            }
            
            if let value = checkoutMode {
                xQuery["checkout_mode"] = value
            }
            
            if let value = tags {
                xQuery["tags"] = value
            }
            
            if let value = isDefault {
                xQuery["is_default"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getAddressById"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "id" + "}", with: "\(id)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(Address.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Updates an existing customer address
        * Description: Customer can modify the details of a previously saved addresses.
        **/
        public func updateAddress(
            id: String,
            body: Address,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: UpdateAddressResult?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["updateAddress"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "id" + "}", with: "\(id)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "PUT",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(UpdateAddressResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Removes an address from a customer's address list
        * Description: Delete an existing customer address from the system.
        **/
        public func removeAddress(
            id: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: DeleteAddressResult?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["removeAddress"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "id" + "}", with: "\(id)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "DELETE",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(DeleteAddressResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Select customer address for order processing
        * Description: Select an address from the saved customer addresses and validates the availability of items in the cart. Additionally, it verifies and updates the delivery promise based on the selected address.
        **/
        public func selectAddress(
            xOrderingSource: OrderingSource?,
            cartId: String?,
            buyNow: Bool?,
            i: Bool?,
            b: Bool?,
            body: SelectCartAddressCreation,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartDetailResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = cartId {
                xQuery["cart_id"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = i {
                xQuery["i"] = value
            }
            
            if let value = b {
                xQuery["b"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            if let value = xOrderingSource {
                xHeaders.append((key: "x-ordering-source", value: "\(value.rawValue)"))
            }
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["selectAddress"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CartDetailResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Select payment mode
        * Description: Select a preferred payment mode from available options during the cart checkout process to securely and efficiently complete their transaction.
        **/
        public func selectPaymentMode(
            xOrderingSource: OrderingSource?,
            id: String?,
            buyNow: Bool?,
            body: UpdateCartPaymentCreation,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartDetailResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            if let value = xOrderingSource {
                xHeaders.append((key: "x-ordering-source", value: "\(value.rawValue)"))
            }
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["selectPaymentMode"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "PUT",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CartDetailResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Validate applied coupon
        * Description: Validate the applicability of a coupon code for the selected payment mode for the existing cart. This ensures the coupon's validity before proceeding with the payment process, enhancing user experience and preventing potential errors during transactions.
        **/
        public func validateCouponForPayment(
            xOrderingSource: OrderingSource?,
            id: String?,
            buyNow: Bool?,
            addressId: String?,
            paymentMode: String?,
            paymentIdentifier: String?,
            aggregatorName: String?,
            merchantCode: String?,
            iin: String?,
            network: String?,
            type: String?,
            cardId: String?,
            cartType: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PaymentCouponValidate?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = addressId {
                xQuery["address_id"] = value
            }
            
            if let value = paymentMode {
                xQuery["payment_mode"] = value
            }
            
            if let value = paymentIdentifier {
                xQuery["payment_identifier"] = value
            }
            
            if let value = aggregatorName {
                xQuery["aggregator_name"] = value
            }
            
            if let value = merchantCode {
                xQuery["merchant_code"] = value
            }
            
            if let value = iin {
                xQuery["iin"] = value
            }
            
            if let value = network {
                xQuery["network"] = value
            }
            
            if let value = type {
                xQuery["type"] = value
            }
            
            if let value = cardId {
                xQuery["card_id"] = value
            }
            
            if let value = cartType {
                xQuery["cart_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            if let value = xOrderingSource {
                xHeaders.append((key: "x-ordering-source", value: "\(value.rawValue)"))
            }
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["validateCouponForPayment"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(PaymentCouponValidate.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: List shipments
        * Description: Get shipment details for the items in a cart, specific to the selected address. Shipment details include delivery promises, seller information, item details, and other relevant information.
        **/
        public func getShipments(
            p: Bool?,
            id: String?,
            buyNow: Bool?,
            addressId: String?,
            areaCode: String?,
            orderType: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartShipmentsResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = p {
                xQuery["p"] = value
            }
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = addressId {
                xQuery["address_id"] = value
            }
            
            if let value = areaCode {
                xQuery["area_code"] = value
            }
            
            if let value = orderType {
                xQuery["order_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getShipments"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CartShipmentsResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Checkout cart
        * Description: The checkout cart initiates the order creation process based on the selected address and payment method. It revalidates the cart details to ensure safe and seamless order placement.
        **/
        public func checkoutCart(
            xOrderingSource: OrderingSource?,
            buyNow: Bool?,
            cartType: String?,
            body: CartCheckoutDetailCreation,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartCheckoutResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = cartType {
                xQuery["cart_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            if let value = xOrderingSource {
                xHeaders.append((key: "x-ordering-source", value: "\(value.rawValue)"))
            }
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["checkoutCart"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CartCheckoutResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update cart metadata
        * Description: Update metadata associated with a cart, which includes customer preferences, delivery instructions, or any special requirements related to the cart items.
        **/
        public func updateCartMeta(
            id: String?,
            buyNow: Bool?,
            body: CartMetaCreation,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartMetaResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["updateCartMeta"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "PUT",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CartMetaResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Create share cart link
        * Description: Generate a unique shareable link for the customer's cart for a specific sales channel. This link enables easy sharing of the cart contents with other users, facilitating collaborative shopping experiences.
        **/
        public func getCartShareLink(
            body: GetShareCartLinkCreation,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetShareCartLinkResult?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getCartShareLink"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetShareCartLinkResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: List shared cart items
        * Description: Get cart items from the shared cart link based on unique token.
        **/
        public func getCartSharedItems(
            token: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: SharedCartResult?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getCartSharedItems"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "token" + "}", with: "\(token)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SharedCartResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update with shared items
        * Description: Merge or replace shared cart items with existing cart.
        **/
        public func updateCartWithSharedItems(
            token: String,
            action: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: SharedCartResult?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["updateCartWithSharedItems"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "token" + "}", with: "\(token)")
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "action" + "}", with: "\(action)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SharedCartResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: List available promotion offers
        * Description: List all promotional offers available for the items in the cart, including details such as offer text, unique promotion ID, and validity period.
        **/
        public func getPromotionOffers(
            slug: String?,
            pageSize: Int?,
            promotionGroup: String?,
            storeId: Int?,
            cartType: String?,
            promotionType: String?,
            cartId: String?,
            autoApply: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PromotionOffersResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = slug {
                xQuery["slug"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            if let value = promotionGroup {
                xQuery["promotion_group"] = value
            }
            
            if let value = storeId {
                xQuery["store_id"] = value
            }
            
            if let value = cartType {
                xQuery["cart_type"] = value
            }
            
            if let value = promotionType {
                xQuery["promotion_type"] = value
            }
            
            if let value = cartId {
                xQuery["cart_id"] = value
            }
            
            if let value = autoApply {
                xQuery["auto_apply"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getPromotionOffers"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(PromotionOffersResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: List ladder offers
        * Description: Get ladder offers associated for the items in the cart. Ladder offers provide discounts or special pricing based on item quantity, allowing users to benefit from bulk purchases or promotional deals.
        **/
        public func getLadderOffers(
            slug: String,
            storeId: String?,
            promotionId: String?,
            pageSize: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: LadderPriceOffers?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["slug"] = slug
            
            if let value = storeId {
                xQuery["store_id"] = value
            }
            
            if let value = promotionId {
                xQuery["promotion_id"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getLadderOffers"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(LadderPriceOffers.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Fetch available promotions payment offers
        * Description: Use this API to get top 5 payment offers available for current product.
        **/
        public func getPromotionPaymentOffers(
            id: String?,
            uid: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PromotionPaymentOffersResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getPromotionPaymentOffers"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(PromotionPaymentOffersResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Checkout cart
        * Description: The checkout cart initiates the order creation process based on the items in the user's cart,  their selected address, and chosen payment methods. It also supports multiple payment method  options and revalidates the cart details to ensure a secure and seamless order placement.
        **/
        public func checkoutCartV2(
            xOrderingSource: OrderingSource?,
            buyNow: Bool?,
            cartType: String?,
            body: CartCheckoutDetailV2Creation,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartCheckoutResult?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = cartType {
                xQuery["cart_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            if let value = xOrderingSource {
                xHeaders.append((key: "x-ordering-source", value: "\(value.rawValue)"))
            }
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["checkoutCartV2"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CartCheckoutResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }}
}