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
            
            ulrs["deleteCart"] = config.domain.appendAsPath("/service/application/cart/v1.0/cart_archive") 
            
            ulrs["getItemCount"] = config.domain.appendAsPath("/service/application/cart/v1.0/basic") 
            
            ulrs["getItemCountV2"] = config.domain.appendAsPath("/service/application/cart/v2.0/basic") 
            
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
            
            ulrs["updateCartMeta"] = config.domain.appendAsPath("/service/application/cart/v1.0/meta") 
            
            ulrs["getCartShareLink"] = config.domain.appendAsPath("/service/application/cart/v1.0/share-cart") 
            
            ulrs["getCartSharedItems"] = config.domain.appendAsPath("/service/application/cart/v1.0/share-cart/{token}") 
            
            ulrs["updateCartWithSharedItems"] = config.domain.appendAsPath("/service/application/cart/v1.0/share-cart/{token}/{action}") 
            
            ulrs["getPromotionOffers"] = config.domain.appendAsPath("/service/application/cart/v1.0/available-promotions") 
            
            ulrs["getLadderOffers"] = config.domain.appendAsPath("/service/application/cart/v1.0/available-ladder-prices") 
            
            ulrs["getShipments"] = config.domain.appendAsPath("/service/application/cart/v1.0/shipment") 
            
            ulrs["checkoutCart"] = config.domain.appendAsPath("/service/application/cart/v1.0/checkout") 
            
            ulrs["checkoutCartV2"] = config.domain.appendAsPath("/service/application/cart/v2.0/checkout") 
            
            ulrs["getPaymentPromotionOffers"] = config.domain.appendAsPath("/service/application/cart/v1.0/available-payment-offers") 
            
            ulrs["getCartMetaConfigs"] = config.domain.appendAsPath("/service/application/cart/v1.0/cart/configuration") 
            
            ulrs["getCartMetaConfig"] = config.domain.appendAsPath("/service/application/cart/v1.0/cart/configuration/{cart_meta_id}") 
            
            self.relativeUrls = ulrs
        }
        public func update(updatedUrl : [String: String]){
            for (key, value) in updatedUrl{
            self.relativeUrls[key] = value
            }
        }
        
        
        
        /**
        *
        * Summary: Retrieve cart details.
        * Description: Get details of a cart linked to a specific customer using a unique cart ID. It offers an overview of the items, quantities, prices, and other relevant information associated with the cart.
        **/
        public func getCart(
            id: String?,
            i: Bool?,
            b: Bool?,
            c: Bool?,
            assignCardId: Int?,
            areaCode: String?,
            buyNow: Bool?,
            cartType: String?,
            orderType: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
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
            
            if let value = cartType {
                xQuery["cart_type"] = value
            }
            
            if let value = orderType {
                xQuery["order_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
            i: Bool?,
            b: Bool?,
            areaCode: String?,
            buyNow: Bool?,
            id: String?,
            cartType: String?,
            orderType: String?,
            body: AddCartRequest,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AddCartDetailResponse?, _ error: FDKError?) -> Void
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
            
            if let value = cartType {
                xQuery["cart_type"] = value
            }
            
            if let value = orderType {
                xQuery["order_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
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
                        
                        let response = Utility.decode(AddCartDetailResponse.self, from: data)
                        
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
        * Summary: Update items in the cart
        * Description: Update cart. Customers can modify added product attributes such as quantity and size, as well as remove items from the cart.
        **/
        public func updateCart(
            id: String?,
            i: Bool?,
            b: Bool?,
            areaCode: String?,
            buyNow: Bool?,
            cartType: String?,
            orderType: String?,
            body: UpdateCartRequest,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: UpdateCartDetailResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(UpdateCartDetailResponse.self, from: data)
                        
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
        * Summary: Clears the cart
        * Description: Delete all items from the user's cart and resets it to its initial state, providing a clean slate for new selections.
        **/
        public func deleteCart(
            id: String?,
            cartType: String?,
            body: DeleteCartRequest,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: DeleteCartDetailResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = cartType {
                xQuery["cart_type"] = value
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
                        
                        let response = Utility.decode(DeleteCartDetailResponse.self, from: data)
                        
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
        * Summary: Count cart items.
        * Description: Get total count of items currently present in the customer's cart.
        **/
        public func getItemCount(
            id: String?,
            buyNow: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartItemCountResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(CartItemCountResponse.self, from: data)
                        
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
        * Summary: Count items in the cart according to cart_type
        * Description: Use this API to get the total number of items present in cart.
        **/
        public func getItemCountV2(
            id: String?,
            buyNow: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartItemCountResponseV2?, _ error: FDKError?) -> Void
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
            
            let fullUrl = relativeUrls["getItemCountV2"] ?? ""
            
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
                        
                        let response = Utility.decode(CartItemCountResponseV2.self, from: data)
                        
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
        * Summary: List available coupons.
        * Description: List all available coupons that customer can apply to their carts. It provides details about each coupon, including its code, discount amount, and applicable conditions.
        **/
        public func getCoupons(
            id: String?,
            buyNow: Bool?,
            slug: String?,
            storeId: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetCouponResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = slug {
                xQuery["slug"] = value
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
                        
                        let response = Utility.decode(GetCouponResponse.self, from: data)
                        
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
        * Summary: Apply coupon.
        * Description: Apply a coupon code to the cart to trigger discounts on eligible items.
        **/
        public func applyCoupon(
            i: Bool?,
            b: Bool?,
            p: Bool?,
            id: String?,
            buyNow: Bool?,
            cartType: String?,
            body: ApplyCouponRequest,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
        * Summary: Remove coupon.
        * Description: Remove an applied coupon from the customer's cart, thereby removing the associated discount from the cart total.
        **/
        public func removeCoupon(
            id: String?,
            buyNow: Bool?,
            cartType: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
            cartType: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: BulkPriceResponse?, _ error: FDKError?) -> Void
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
            
            if let value = cartType {
                xQuery["cart_type"] = value
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
                        
                        let response = Utility.decode(BulkPriceResponse.self, from: data)
                        
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
        * Summary: Use reward points.
        * Description: Users can redeem their accumulated reward points and apply them to the items in their cart, thereby availing discounts on their current purchases.
        **/
        public func applyRewardPoints(
            id: String?,
            i: Bool?,
            b: Bool?,
            buyNow: Bool?,
            cartType: String?,
            body: RewardPointRequest,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
            userId: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetAddressesResponse?, _ error: FDKError?) -> Void
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
            
            if let value = userId {
                xQuery["user_id"] = value
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
                        
                        let response = Utility.decode(GetAddressesResponse.self, from: data)
                        
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
            onResponse: @escaping (_ response: SaveAddressResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(SaveAddressResponse.self, from: data)
                        
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
            userId: String?,
            
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
            
            if let value = userId {
                xQuery["user_id"] = value
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
            onResponse: @escaping (_ response: UpdateAddressResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(UpdateAddressResponse.self, from: data)
                        
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
            onResponse: @escaping (_ response: DeleteAddressResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(DeleteAddressResponse.self, from: data)
                        
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
            cartId: String?,
            buyNow: Bool?,
            i: Bool?,
            b: Bool?,
            body: SelectCartAddressRequest,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
            id: String?,
            buyNow: Bool?,
            orderType: String?,
            body: UpdateCartPaymentRequest,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = orderType {
                xQuery["order_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
        * Summary: Update cart metadata.
        * Description: Update metadata associated with a cart, which includes customer preferences, delivery instructions, or any special requirements related to the cart items.
        **/
        public func updateCartMeta(
            id: String?,
            buyNow: Bool?,
            body: CartMetaRequest,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartMetaResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(CartMetaResponse.self, from: data)
                        
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
            body: GetShareCartLinkRequest,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetShareCartLinkResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(GetShareCartLinkResponse.self, from: data)
                        
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
            onResponse: @escaping (_ response: SharedCartResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(SharedCartResponse.self, from: data)
                        
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
            cartId: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: SharedCartResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = cartId {
                xQuery["cart_id"] = value
            }
            
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
                        
                        let response = Utility.decode(SharedCartResponse.self, from: data)
                        
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
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PromotionOffersResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(PromotionOffersResponse.self, from: data)
                        
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
        * Summary: List shipments.
        * Description: Get shipment details for the items in a cart, specific to the selected address. Shipment details include delivery promises, seller information, item details, and other relevant information.
        **/
        public func getShipments(
            pickAtStoreUid: Int?,
            orderingStoreId: Int?,
            i: Bool?,
            p: Bool?,
            id: String?,
            buyNow: Bool?,
            addressId: String?,
            areaCode: String?,
            orderType: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartShipmentsResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = pickAtStoreUid {
                xQuery["pick_at_store_uid"] = value
            }
            
            if let value = orderingStoreId {
                xQuery["ordering_store_id"] = value
            }
            
            if let value = i {
                xQuery["i"] = value
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
                        
                        let response = Utility.decode(CartShipmentsResponse.self, from: data)
                        
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
            buyNow: Bool?,
            cartType: String?,
            body: CartCheckoutDetailRequest,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartCheckoutResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = cartType {
                xQuery["cart_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
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
                        
                        let response = Utility.decode(CartCheckoutResponse.self, from: data)
                        
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
        * Summary: Enhanced cart checkout process
        * Description: Enhanced version of checkout process that supports multiple mode of payment(MOP).
        **/
        public func checkoutCartV2(
            buyNow: Bool?,
            cartType: String?,
            body: CartCheckoutDetailV2Request,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartCheckoutResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = buyNow {
                xQuery["buy_now"] = value
            }
            
            if let value = cartType {
                xQuery["cart_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
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
                        
                        let response = Utility.decode(CartCheckoutResponse.self, from: data)
                        
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
        * Description: Use this API to get top 5 payment offers available for current cart.
        **/
        public func getPaymentPromotionOffers(
            id: String?,
            uid: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PromotionPaymentOffersResponse?, _ error: FDKError?) -> Void
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
            
            let fullUrl = relativeUrls["getPaymentPromotionOffers"] ?? ""
            
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
                        
                        let response = Utility.decode(PromotionPaymentOffersResponse.self, from: data)
                        
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
        * Summary: Get cart configuration
        * Description: Get cart configuration.
        **/
        public func getCartMetaConfigs(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartMetaConfigListResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getCartMetaConfigs"] ?? ""
            
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
                        
                        let response = Utility.decode(CartMetaConfigListResponse.self, from: data)
                        
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
        * Summary: Get cart configuration by id
        * Description: Get cart configuration by id.
        **/
        public func getCartMetaConfig(
            cartMetaId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CartConfigDetailResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getCartMetaConfig"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "cart_meta_id" + "}", with: "\(cartMetaId)")
            
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
                        
                        let response = Utility.decode(CartConfigDetailResponse.self, from: data)
                        
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