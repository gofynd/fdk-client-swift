import Foundation

extension ApplicationClient {

    public class PosCart {
        
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config;
            var ulrs = [String: String]()
            
            ulrs["getCart"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/detail") 
            
            ulrs["getCartLastModified"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/detail") 
            
            ulrs["addItems"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/detail") 
            
            ulrs["updateCart"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/detail") 
            
            ulrs["getItemCount"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/basic") 
            
            ulrs["getCoupons"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/coupon") 
            
            ulrs["applyCoupon"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/coupon") 
            
            ulrs["removeCoupon"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/coupon") 
            
            ulrs["getBulkDiscountOffers"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/bulk-price") 
            
            ulrs["applyRewardPoints"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/redeem/points/") 
            
            ulrs["getAddresses"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/address") 
            
            ulrs["addAddress"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/address") 
            
            ulrs["getAddressById"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/address/{id}") 
            
            ulrs["updateAddress"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/address/{id}") 
            
            ulrs["removeAddress"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/address/{id}") 
            
            ulrs["selectAddress"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/select-address") 
            
            ulrs["selectPaymentMode"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/payment") 
            
            ulrs["validateCouponForPayment"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/payment/validate/") 
            
            ulrs["getShipments"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/shipment") 
            
            ulrs["updateShipments"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/shipment") 
            
            ulrs["checkoutCart"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/checkout") 
            
            ulrs["updateCartMeta"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/meta") 
            
            ulrs["getAvailableDeliveryModes"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/available-delivery-mode") 
            
            ulrs["getStoreAddressByUid"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/store-address") 
            
            ulrs["getCartShareLink"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/share-cart") 
            
            ulrs["getCartSharedItems"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/share-cart/{token}") 
            
            ulrs["updateCartWithSharedItems"] = config.domain.appendAsPath("/service/application/pos/cart/v1.0/share-cart/{token}/{action}") 
            
            self.relativeUrls = ulrs
        }
        public func update(updatedUrl : [String: String]){
            for (key, value) in updatedUrl{
            self.relativeUrls[key] = value
            }
        }
        
        
        
        /**
        *
        * Summary: Retrieve cart details
        * Description: Retrieve the current state and items in the shopping cart.
        **/
        public func getCart(
            id: String?,
            i: Bool?,
            b: Bool?,
            c: Bool?,
            assignCardId: Int?,
            areaCode: String?,
            buyNow: Bool?,
            
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


 


            
            let fullUrl = relativeUrls["getCart"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Cart modification time
        * Description: Gets the last modified timestamp for the cart.
        **/
        public func getCartLastModified(
            id: String?,
            
            onResponse: @escaping (_ response: [String: Any]?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            
            let fullUrl = relativeUrls["getCartLastModified"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "HEAD",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Add to cart
        * Description: Adds selected items to the shopping cart.
        **/
        public func addItems(
            i: Bool?,
            b: Bool?,
            areaCode: String?,
            buyNow: Bool?,
            id: String?,
            body: AddCartRequest,
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


 


            
            let fullUrl = relativeUrls["addItems"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Update cart
        * Description: Modifies items and quantities in the existing cart.
        **/
        public func updateCart(
            id: String?,
            i: Bool?,
            b: Bool?,
            areaCode: String?,
            buyNow: Bool?,
            body: UpdateCartRequest,
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


 


            
            let fullUrl = relativeUrls["updateCart"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "PUT",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Count cart items
        * Description: Gets the total number of items in the cart.
        **/
        public func getItemCount(
            id: String?,
            buyNow: Bool?,
            
            onResponse: @escaping (_ response: CartItemCountResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = buyNow {
    
    xQuery["buy_now"] = value
    
}


 


            
            let fullUrl = relativeUrls["getItemCount"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: List available coupons
        * Description: Retrieve coupons that can be applied to the cart.
        **/
        public func getCoupons(
            id: String?,
            buyNow: Bool?,
            
            onResponse: @escaping (_ response: GetCouponResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = buyNow {
    
    xQuery["buy_now"] = value
    
}


 


            
            let fullUrl = relativeUrls["getCoupons"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Apply coupon
        * Description: Applies a coupon code to get discounts on cart items.
        **/
        public func applyCoupon(
            i: Bool?,
            b: Bool?,
            p: Bool?,
            id: String?,
            buyNow: Bool?,
            body: ApplyCouponRequest,
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


 


            
            let fullUrl = relativeUrls["applyCoupon"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Remove coupon
        * Description: Removes an applied coupon from the cart.
        **/
        public func removeCoupon(
            id: String?,
            buyNow: Bool?,
            
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = buyNow {
    
    xQuery["buy_now"] = value
    
}


 


            
            let fullUrl = relativeUrls["removeCoupon"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "DELETE",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Bulk discounts
        * Description: Lists available bulk discount offers for cart items.
        **/
        public func getBulkDiscountOffers(
            itemId: Int?,
            articleId: String?,
            uid: Int?,
            slug: String?,
            
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


 


            
            let fullUrl = relativeUrls["getBulkDiscountOffers"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Use reward points
        * Description: Applies user’s reward points to the cart.
        **/
        public func applyRewardPoints(
            id: String?,
            i: Bool?,
            b: Bool?,
            buyNow: Bool?,
            body: RewardPointRequest,
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


 


            
            let fullUrl = relativeUrls["applyRewardPoints"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Get saved addresses
        * Description: Retrieve all saved addresses for the user.
        **/
        public func getAddresses(
            cartId: String?,
            buyNow: Bool?,
            mobileNo: String?,
            checkoutMode: String?,
            tags: String?,
            isDefault: Bool?,
            
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


 


            
            let fullUrl = relativeUrls["getAddresses"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Add new address
        * Description: Saves a new address for the user.
        **/
        public func addAddress(
            body: Address,
            onResponse: @escaping (_ response: SaveAddressResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            let fullUrl = relativeUrls["addAddress"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
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
        * Summary: Fetch address
        * Description: Retrieves a saved address using its ID.
        **/
        public func getAddressById(
            id: String,
            cartId: String?,
            buyNow: Bool?,
            mobileNo: String?,
            checkoutMode: String?,
            tags: String?,
            isDefault: Bool?,
            
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


 


            
            var fullUrl = relativeUrls["getAddressById"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "id" + "}", with: "\(id)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Update address
        * Description: Modifies a saved address.
        **/
        public func updateAddress(
            id: String,
            body: Address,
            onResponse: @escaping (_ response: UpdateAddressResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["updateAddress"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "id" + "}", with: "\(id)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "PUT",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
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
        * Summary: Delete address
        * Description: Removes a saved address from the user's profile.
        **/
        public func removeAddress(
            id: String,
            
            onResponse: @escaping (_ response: DeleteAddressResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["removeAddress"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "id" + "}", with: "\(id)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "DELETE",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
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
        * Summary: Choose delivery address
        * Description: Selects an address for the cart's delivery.
        **/
        public func selectAddress(
            cartId: String?,
            buyNow: Bool?,
            i: Bool?,
            b: Bool?,
            body: SelectCartAddressRequest,
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


 


            
            let fullUrl = relativeUrls["selectAddress"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Pick payment method
        * Description: Chooses a payment mode for the checkout process.
        **/
        public func selectPaymentMode(
            id: String?,
            buyNow: Bool?,
            body: UpdateCartPaymentRequest,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = buyNow {
    
    xQuery["buy_now"] = value
    
}


 


            
            let fullUrl = relativeUrls["selectPaymentMode"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "PUT",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Validate coupon
        * Description: Checks if a coupon is valid for the selected payment mode.
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


 


            
            let fullUrl = relativeUrls["validateCouponForPayment"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Description: Retrieve shipment details for items in the cart.
        **/
        public func getShipments(
            pickAtStoreUid: Int?,
            orderingStoreId: Int?,
            p: Bool?,
            id: String?,
            addressId: String?,
            areaCode: String?,
            orderType: String?,
            
            onResponse: @escaping (_ response: CartShipmentsResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = pickAtStoreUid {
    
    xQuery["pick_at_store_uid"] = value
    
}


if let value = orderingStoreId {
    
    xQuery["ordering_store_id"] = value
    
}


if let value = p {
    
    xQuery["p"] = value
    
}


if let value = id {
    
    xQuery["id"] = value
    
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


 


            
            let fullUrl = relativeUrls["getShipments"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Update shipments
        * Description: Modifies shipment details for items in the cart.
        **/
        public func updateShipments(
            i: Bool?,
            p: Bool?,
            id: String?,
            addressId: String?,
            areaCode: String?,
            orderType: String?,
            body: UpdateCartShipmentRequest,
            onResponse: @escaping (_ response: CartShipmentsResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = i {
    
    xQuery["i"] = value
    
}


if let value = p {
    
    xQuery["p"] = value
    
}


if let value = id {
    
    xQuery["id"] = value
    
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


 


            
            let fullUrl = relativeUrls["updateShipments"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "PUT",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Description: Initiates the checkout process for the cart.
        **/
        public func checkoutCart(
            id: String?,
            body: CartPosCheckoutDetailRequest,
            onResponse: @escaping (_ response: CartCheckoutResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            
            let fullUrl = relativeUrls["checkoutCart"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Update cart metadata
        * Description: Adds or modifies metadata for the cart.
        **/
        public func updateCartMeta(
            id: String?,
            buyNow: Bool?,
            body: CartMetaRequest,
            onResponse: @escaping (_ response: CartMetaResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = buyNow {
    
    xQuery["buy_now"] = value
    
}


 


            
            let fullUrl = relativeUrls["updateCartMeta"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "PUT",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
        * Summary: Delivery options
        * Description: Lists available delivery modes for the cart.
        **/
        public func getAvailableDeliveryModes(
            areaCode: String,
            id: String?,
            
            onResponse: @escaping (_ response: CartDeliveryModesResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 


    xQuery["area_code"] = areaCode



if let value = id {
    
    xQuery["id"] = value
    
}


 


            
            let fullUrl = relativeUrls["getAvailableDeliveryModes"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CartDeliveryModesResponse.self, from: data)
                        
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
        * Summary: Store address
        * Description: Gets the address of the store by its UID.
        **/
        public func getStoreAddressByUid(
            storeUid: Int,
            
            onResponse: @escaping (_ response: StoreDetailsResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 


    xQuery["store_uid"] = storeUid



 


            
            let fullUrl = relativeUrls["getStoreAddressByUid"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(StoreDetailsResponse.self, from: data)
                        
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
        * Summary: Share cart link
        * Description: Generates a shareable link for the current cart.
        **/
        public func getCartShareLink(
            body: GetShareCartLinkRequest,
            onResponse: @escaping (_ response: GetShareCartLinkResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            let fullUrl = relativeUrls["getCartShareLink"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
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
        * Summary: Shared cart items
        * Description: Retrieves items from a shared cart link.
        **/
        public func getCartSharedItems(
            token: String,
            
            onResponse: @escaping (_ response: SharedCartResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["getCartSharedItems"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "token" + "}", with: "\(token)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
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
        * Description: Updates the cart with items from a shared link.
        **/
        public func updateCartWithSharedItems(
            token: String,
            action: String,
            
            onResponse: @escaping (_ response: SharedCartResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["updateCartWithSharedItems"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "token" + "}", with: "\(token)")
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "action" + "}", with: "\(action)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
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
        
        
    }
}