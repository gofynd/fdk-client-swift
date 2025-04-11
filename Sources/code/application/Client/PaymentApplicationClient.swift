import Foundation

extension ApplicationClient {

    public class Payment {
        
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config;
            var ulrs = [String: String]()
            
            ulrs["getAggregatorsConfig"] = config.domain.appendAsPath("/service/application/payment/v1.0/config/aggregators/key") 
            
            ulrs["attachCardToCustomer"] = config.domain.appendAsPath("/service/application/payment/v1.0/card/attach") 
            
            ulrs["getActiveCardAggregator"] = config.domain.appendAsPath("/service/application/payment/v1.0/card/aggregator") 
            
            ulrs["updateUserCard"] = config.domain.appendAsPath("/service/application/payment/v1.0/card/aggregator") 
            
            ulrs["getActiveUserCards"] = config.domain.appendAsPath("/service/application/payment/v1.0/cards") 
            
            ulrs["updateActiveCards"] = config.domain.appendAsPath("/service/application/payment/v1.0/cards") 
            
            ulrs["deleteUserCard"] = config.domain.appendAsPath("/service/application/payment/v1.0/card/remove") 
            
            ulrs["verifyCustomerForPayment"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/customer/validation") 
            
            ulrs["verifyAndChargePayment"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/confirm/charge") 
            
            ulrs["initialisePayment"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/request") 
            
            ulrs["checkAndUpdatePaymentStatus"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/confirm/polling") 
            
            ulrs["getPaymentModeRoutes"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/options") 
            
            ulrs["getPosPaymentModeRoutes"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/options/pos") 
            
            ulrs["walletLinkInitiate"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/options/wallet/link") 
            
            ulrs["linkWallet"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/options/wallet/verify") 
            
            ulrs["delinkWallet"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/options/wallet/delink") 
            
            ulrs["getRupifiBannerDetails"] = config.domain.appendAsPath("/service/application/payment/v1.0/rupifi/banner") 
            
            ulrs["getEpaylaterBannerDetails"] = config.domain.appendAsPath("/service/application/payment/v1.0/epaylater/banner") 
            
            ulrs["resendOrCancelPayment"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/resend_or_cancel") 
            
            ulrs["renderHTML"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/html/render") 
            
            ulrs["validateVPA"] = config.domain.appendAsPath("/service/application/payment/v1.0/validate-vpa") 
            
            ulrs["cardDetails"] = config.domain.appendAsPath("/service/application/payment/v1.0/cards/info/{card_info}") 
            
            ulrs["getActiveRefundTransferModes"] = config.domain.appendAsPath("/service/application/payment/v1.0/refund/transfer-mode") 
            
            ulrs["enableOrDisableRefundTransferMode"] = config.domain.appendAsPath("/service/application/payment/v1.0/refund/transfer-mode") 
            
            ulrs["getUserBeneficiariesDetail"] = config.domain.appendAsPath("/service/application/payment/v1.0/refund/user/beneficiary") 
            
            ulrs["verifyIfscCode"] = config.domain.appendAsPath("/service/application/payment/v1.0/ifsc-code/verify") 
            
            ulrs["getOrderBeneficiariesDetail"] = config.domain.appendAsPath("/service/application/payment/v1.0/refund/order/beneficiaries") 
            
            ulrs["addBeneficiaryDetails"] = config.domain.appendAsPath("/service/application/payment/v1.0/refund/account") 
            
            ulrs["deleteBeneficiaryDetails"] = config.domain.appendAsPath("/service/application/payment/v1.0/refund/account") 
            
            ulrs["verifyOtpAndAddBeneficiaryForBank"] = config.domain.appendAsPath("/service/application/payment/v1.0/refund/verification/bank") 
            
            ulrs["addRefundBankAccountUsingOTP"] = config.domain.appendAsPath("/service/application/payment/v1.0/refund/account/otp") 
            
            ulrs["getotpOrderBeneficiariesDetail"] = config.domain.appendAsPath("/service/application/payment/v1.0/refund/account/otp") 
            
            ulrs["verifyOtpAndAddBeneficiaryForWallet"] = config.domain.appendAsPath("/service/application/payment/v1.0/refund/verification/wallet") 
            
            ulrs["updateDefaultBeneficiary"] = config.domain.appendAsPath("/service/application/payment/v1.0/refund/beneficiary/default") 
            
            ulrs["getBenficiaryOrder"] = config.domain.appendAsPath("/service/application/payment/v1.0/refund/beneficiaries/orders") 
            
            ulrs["getPaymentLink"] = config.domain.appendAsPath("/service/application/payment/v1.0/create-payment-link") 
            
            ulrs["createPaymentLink"] = config.domain.appendAsPath("/service/application/payment/v1.0/create-payment-link") 
            
            ulrs["getPaymentLinkId"] = config.domain.appendAsPath("/service/application/payment/v1.0/create-payment-link/{id}") 
            
            ulrs["resendPaymentLink"] = config.domain.appendAsPath("/service/application/payment/v1.0/resend-payment-link") 
            
            ulrs["getPaymentModeRoutesPaymentLink"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/options/link") 
            
            ulrs["pollingPaymentLink"] = config.domain.appendAsPath("/service/application/payment/v1.0/polling-payment-link") 
            
            ulrs["createOrderHandlerPaymentLink"] = config.domain.appendAsPath("/service/application/payment/v1.0/create-order/link") 
            
            ulrs["initialisePaymentPaymentLink"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/request/link") 
            
            ulrs["checkAndUpdatePaymentStatusPaymentLink"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/confirm/polling/link") 
            
            ulrs["customerCreditSummary"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/credit-summary") 
            
            ulrs["redirectToAggregator"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/redirect-to-aggregator") 
            
            ulrs["checkCredit"] = config.domain.appendAsPath("/service/application/payment/v1.0/check-credits") 
            
            ulrs["customerOnboard"] = config.domain.appendAsPath("/service/application/payment/v1.0/credit-onboard") 
            
            ulrs["outstandingOrderDetails"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/outstanding-orders") 
            
            ulrs["cancelPaymentLink"] = config.domain.appendAsPath("/service/application/payment/v1.0/cancel-payment-link") 
            
            ulrs["paidOrderDetails"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/paid-orders") 
            
            ulrs["createPaymentOrder"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment-orders") 
            
            ulrs["setRefundOptionforShipment"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/refundoptions") 
            
            ulrs["getSelectedRefundOption"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/selected_refund_options") 
            
            ulrs["getUserBeneficiariesDetailV2"] = config.domain.appendAsPath("/service/application/payment/v2.0/refund/user/beneficiary") 
            
            ulrs["validateBeneficiaryAddress"] = config.domain.appendAsPath("/service/application/payment/v1.0/validate/beneficiary-address") 
            
            ulrs["confirmPayment"] = config.domain.appendAsPath("/service/application/payment/v1.0/payment/confirm") 
            
            self.relativeUrls = ulrs
        }
        public func update(updatedUrl : [String: String]){
            for (key, value) in updatedUrl{
            self.relativeUrls[key] = value
            }
        }
        
        
        
        /**
        *
        * Summary: Get payment aggregators
        * Description: Get aggregator secret key of all payment gateways utilized for payments when using the SDK for the payment gateway.
        **/
        public func getAggregatorsConfig(
            xApiToken: String?,
            refresh: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AggregatorsConfigDetail?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = refresh {
                xQuery["refresh"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            if let value = xApiToken {
                xHeaders.append((key: "x-api-token", value: value))
            }
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getAggregatorsConfig"] ?? ""
            
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
                        
                        let response = Utility.decode(AggregatorsConfigDetail.self, from: data)
                        
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
        * Summary: Link payment card to customer
        * Description: Link payment card to a user account for seamless transactions. Upon successful linking, the card becomes associated with the user's profile, enabling secure and convenient payments.
        **/
        public func attachCardToCustomer(
            body: AttachCard,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AttachCardsDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["attachCardToCustomer"] ?? ""
            
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
                        
                        let response = Utility.decode(AttachCardsDetails.self, from: data)
                        
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
        * Summary: Retrieve active card aggregator
        * Description: Get details about the active card aggregator used by the user, including the aggregator name.You can refresh the data by setting the 'refresh' parameter to true if needed.
        **/
        public func getActiveCardAggregator(
            refresh: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ActiveCardPaymentGatewayDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = refresh {
                xQuery["refresh"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getActiveCardAggregator"] ?? ""
            
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
                        
                        let response = Utility.decode(ActiveCardPaymentGatewayDetails.self, from: data)
                        
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
        * Summary: card aggregator
        * Description: Use this API to get card of user.
        **/
        public func updateUserCard(
            body: UpdateAggregatorCardReq,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: UpdateAggregatorCardDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["updateUserCard"] ?? ""
            
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
                        
                        let response = Utility.decode(UpdateAggregatorCardDetails.self, from: data)
                        
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
        * Summary: List user's cards.
        * Description: List all active cards saved by the user.Includes details such as the card's aggregator name, card ID, token, reference, number, expiration date, type, issuer, brand, nickname, and whether it has expired.
        **/
        public func getActiveUserCards(
            forceRefresh: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ListCardsDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = forceRefresh {
                xQuery["force_refresh"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getActiveUserCards"] ?? ""
            
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
                        
                        let response = Utility.decode(ListCardsDetails.self, from: data)
                        
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
        * Summary: update a card
        * Description: Use this API to update a card list added by a user on the payment gateway.
        **/
        public func updateActiveCards(
            body: UpdateAggregatorCardReq,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: UpdateCard?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["updateActiveCards"] ?? ""
            
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
                        
                        let response = Utility.decode(UpdateCard.self, from: data)
                        
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
        * Summary: Delete customer card
        * Description: Delete payment card from the user's account.
        **/
        public func deleteUserCard(
            body: DeleteCard,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: DeleteCardsDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["deleteUserCard"] ?? ""
            
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
                        
                        let response = Utility.decode(DeleteCardsDetails.self, from: data)
                        
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
        * Summary: Verify payment customer.
        * Description: Verify if the user is eligible for pay-later payment from the payment aggregator side using the customer's phone number.
        **/
        public func verifyCustomerForPayment(
            body: ValidateCustomer,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ValidateCustomerDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["verifyCustomerForPayment"] ?? ""
            
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
                        
                        let response = Utility.decode(ValidateCustomerDetails.self, from: data)
                        
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
        * Summary: Verify order confirmation and charge
        * Description: Verify the payment status and charge from the customer's BNPL (Buy Now, Pay Later) account after order confirmation.
        **/
        public func verifyAndChargePayment(
            body: ChargeCustomer,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ChargeCustomerDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["verifyAndChargePayment"] ?? ""
            
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
                        
                        let response = Utility.decode(ChargeCustomerDetails.self, from: data)
                        
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
        * Summary: Start payment process.
        * Description: Initiate the payment procedure for an order. Upon successful initiation, it returns a  details including the success status, aggregator information, payment method, status, merchant order ID aggregator order , polling URL, timeout, virtual ID, Razorpay payment ID, customer ID, and device ID.
        **/
        public func initialisePayment(
            body: PaymentInitialization,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PaymentInitializationDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["initialisePayment"] ?? ""
            
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
                        
                        let response = Utility.decode(PaymentInitializationDetails.self, from: data)
                        
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
        * Summary: Update payment status
        * Description: Polling process to confirm the payment status. It periodically checks and updates the current status of a payment, ensuring timely and accurate confirmation of payment transactions.
        **/
        public func checkAndUpdatePaymentStatus(
            body: PaymentStatusUpdate,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PaymentStatusUpdateDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["checkAndUpdatePaymentStatus"] ?? ""
            
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
                        
                        let response = Utility.decode(PaymentStatusUpdateDetails.self, from: data)
                        
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
        * Summary: Get payment modes
        * Description: Get available payment methods on the payment page, specifying the aggregator for each option, such as 'Netbanking powered by Juspay' and 'Card powered by Razorpay'.
        **/
        public func getPaymentModeRoutes(
            amount: Int,
            cartId: String,
            checkoutMode: String?,
            refresh: Bool?,
            orderId: String?,
            cardReference: String?,
            userDetails: String?,
            displaySplit: Bool?,
            advancePayment: Bool?,
            shipmentId: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PaymentModeRouteDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["amount"] = amount
            xQuery["cart_id"] = cartId
            
            if let value = checkoutMode {
                xQuery["checkout_mode"] = value
            }
            
            if let value = refresh {
                xQuery["refresh"] = value
            }
            
            if let value = orderId {
                xQuery["order_id"] = value
            }
            
            if let value = cardReference {
                xQuery["card_reference"] = value
            }
            
            if let value = userDetails {
                xQuery["user_details"] = value
            }
            
            if let value = displaySplit {
                xQuery["display_split"] = value
            }
            
            if let value = advancePayment {
                xQuery["advance_payment"] = value
            }
            
            if let value = shipmentId {
                xQuery["shipment_id"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getPaymentModeRoutes"] ?? ""
            
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
                        
                        let response = Utility.decode(PaymentModeRouteDetails.self, from: data)
                        
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
        * Summary: POS payment modes
        * Description: Get available payment methods on the payment page for POS, specifying the aggregator for each option, such as 'CARD powered by Juspay' and 'QR powered by Razorpay'.
        **/
        public func getPosPaymentModeRoutes(
            amount: Int,
            cartId: String,
            pincode: String,
            checkoutMode: String?,
            refresh: Bool?,
            cardReference: String?,
            orderType: String,
            userDetails: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PaymentModeRouteDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["amount"] = amount
            xQuery["cart_id"] = cartId
            xQuery["pincode"] = pincode
            
            if let value = checkoutMode {
                xQuery["checkout_mode"] = value
            }
            
            if let value = refresh {
                xQuery["refresh"] = value
            }
            
            if let value = cardReference {
                xQuery["card_reference"] = value
            }
            xQuery["order_type"] = orderType
            
            if let value = userDetails {
                xQuery["user_details"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getPosPaymentModeRoutes"] ?? ""
            
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
                        
                        let response = Utility.decode(PaymentModeRouteDetails.self, from: data)
                        
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
        * Summary: Initiate linking of wallet
        * Description: Link wallet for the aggregator for processing of payment.
        **/
        public func walletLinkInitiate(
            body: WalletLinkRequestSchema,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: WalletResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["walletLinkInitiate"] ?? ""
            
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
                        
                        let response = Utility.decode(WalletResponseSchema.self, from: data)
                        
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
        * Summary: OTP verification
        * Description: Verify the linking of wallet using OTP for further processing of payment.
        **/
        public func linkWallet(
            body: WalletVerifyRequestSchema,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: WalletResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["linkWallet"] ?? ""
            
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
                        
                        let response = Utility.decode(WalletResponseSchema.self, from: data)
                        
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
        * Summary: Delink the wallet
        * Description: Delink the wallet.
        **/
        public func delinkWallet(
            body: WalletDelinkRequestSchema,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: WalletResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["delinkWallet"] ?? ""
            
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
                        
                        let response = Utility.decode(WalletResponseSchema.self, from: data)
                        
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
        * Summary: Rupifi banner info.
        * Description: Get Rupifi payment banner details. It provides information such as the KYC URL and the current status of the Rupifi payment banner.
        **/
        public func getRupifiBannerDetails(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: RupifiBannerDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getRupifiBannerDetails"] ?? ""
            
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
                        
                        let response = Utility.decode(RupifiBannerDetails.self, from: data)
                        
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
        * Summary: Epaylater banner info
        * Description: Get Epaylater payment banner details. It provides information about the banner's display status, along with relevant messages and the user's registration status.
        **/
        public func getEpaylaterBannerDetails(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: EpaylaterBannerDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getEpaylaterBannerDetails"] ?? ""
            
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
                        
                        let response = Utility.decode(EpaylaterBannerDetails.self, from: data)
                        
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
        * Summary: Resend or cancel a pending payment transaction
        * Description: Resend or cancel payment link that have been initiated but may require modification or cancellation for various reasons, ensuring flexibility and control in payment processing.
        **/
        public func resendOrCancelPayment(
            body: ResendOrCancelPayment,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ResendOrCancelPaymentDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["resendOrCancelPayment"] ?? ""
            
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
                        
                        let response = Utility.decode(ResendOrCancelPaymentDetails.self, from: data)
                        
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
        * Summary: Render HTML.
        * Description: Render HTML for a payment aggregator page.
        **/
        public func renderHTML(
            body: RenderHTML,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: RenderHTMLDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["renderHTML"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "text/html",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(RenderHTMLDetails.self, from: data)
                        
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
        * Summary: Validate VPA.
        * Description: Validate if a Virtual Payment Address (VPA) is valid for processing payments and returns the validation result.is_valid boolean value indicating whether the VPA is valid for payments.
        **/
        public func validateVPA(
            body: ValidateVPA,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ValidateVPADetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["validateVPA"] ?? ""
            
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
                        
                        let response = Utility.decode(ValidateVPADetails.self, from: data)
                        
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
        * Summary: Get card details
        * Description: Get details of a specified payment card, including information such as the card type, brand, country, and expiration date.
        **/
        public func cardDetails(
            cardInfo: String,
            aggregator: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CardDetailsFetchedDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = aggregator {
                xQuery["aggregator"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["cardDetails"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "card_info" + "}", with: "\(cardInfo)")
            
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
                        
                        let response = Utility.decode(CardDetailsFetchedDetails.self, from: data)
                        
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
        * Summary: Get refund transfer modes
        * Description: Lists available refund modes, such as UPI, providing details like display name, logo, and ID for each mode.
        **/
        public func getActiveRefundTransferModes(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: TransferModeFetchDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getActiveRefundTransferModes"] ?? ""
            
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
                        
                        let response = Utility.decode(TransferModeFetchDetails.self, from: data)
                        
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
        * Summary: Toggle refund mode
        * Description: Enable/Disable a particular refund transfer mode based on the request body parameters, indicating whether the mode should be enabled or disabled.
        **/
        public func enableOrDisableRefundTransferMode(
            body: UpdateRefundTransferMode,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: RefundTransferModeUpdateDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["enableOrDisableRefundTransferMode"] ?? ""
            
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
                        
                        let response = Utility.decode(RefundTransferModeUpdateDetails.self, from: data)
                        
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
        * Summary: Retrieve beneficiary details
        * Description: Get beneficiaries associated with the user for processing refunds, based on the provided order ID.
        **/
        public func getUserBeneficiariesDetail(
            orderId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: OrderBeneficiaryFetchDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["order_id"] = orderId
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getUserBeneficiariesDetail"] ?? ""
            
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
                        
                        let response = Utility.decode(OrderBeneficiaryFetchDetails.self, from: data)
                        
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
        * Summary: Verify IFSC
        * Description: Validate IFSC code and returns bank details if valid.
        **/
        public func verifyIfscCode(
            ifscCode: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: IfscCodeDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = ifscCode {
                xQuery["ifsc_code"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["verifyIfscCode"] ?? ""
            
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
                        
                        let response = Utility.decode(IfscCodeDetails.self, from: data)
                        
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
        * Summary: Retrieve beneficiary details
        * Description: Get beneficiary details like bank name , ifsc code , branch name associated with a specific order for refund processing.
        **/
        public func getOrderBeneficiariesDetail(
            orderId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: OrderBeneficiaryFetchDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["order_id"] = orderId
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getOrderBeneficiariesDetail"] ?? ""
            
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
                        
                        let response = Utility.decode(OrderBeneficiaryFetchDetails.self, from: data)
                        
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
        * Summary: Add beneficiary for refund
        * Description: Add beneficiary details specifically for refund transactions, including account holder name, account number and bank details.
        **/
        public func addBeneficiaryDetails(
            body: AddBeneficiaryDetails,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: RefundAccountDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["addBeneficiaryDetails"] ?? ""
            
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
                        
                        let response = Utility.decode(RefundAccountDetails.self, from: data)
                        
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
        * Summary: Delete saved beneficiary details of customers
        * Description: Use this API to delete the saved beneficiary details provided beneficiary Id.
        **/
        public func deleteBeneficiaryDetails(
            body: DeleteBeneficiary,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: DeleteRefundAccountDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["deleteBeneficiaryDetails"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "PATCH",
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
                        
                        let response = Utility.decode(DeleteRefundAccountDetails.self, from: data)
                        
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
        * Summary: Verify OTP for bank.
        * Description: Verify the OTP provided by the user and adds a bank beneficiary for refund processing.
        **/
        public func verifyOtpAndAddBeneficiaryForBank(
            body: AddBeneficiaryViaOtpVerification,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AddBeneficiaryViaOtpVerificationDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["verifyOtpAndAddBeneficiaryForBank"] ?? ""
            
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
                        
                        let response = Utility.decode(AddBeneficiaryViaOtpVerificationDetails.self, from: data)
                        
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
        * Summary: Save bank details for cancelled/returned order
        * Description: Add bank account specifically for refunds, employing OTP verification for security.
        **/
        public func addRefundBankAccountUsingOTP(
            body: AddBeneficiaryDetailsOTP,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: RefundAccountDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["addRefundBankAccountUsingOTP"] ?? ""
            
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
                        
                        let response = Utility.decode(RefundAccountDetails.self, from: data)
                        
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
        * Summary: Lists the beneficiary of a refund
        * Description: Get the details of all active beneficiary added by a user for refund.
        **/
        public func getotpOrderBeneficiariesDetail(
            orderId: String,
            requestHash: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AddBeneficiaryDetailsOTPDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["order_id"] = orderId
            xQuery["request_hash"] = requestHash
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getotpOrderBeneficiariesDetail"] ?? ""
            
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
                        
                        let response = Utility.decode(AddBeneficiaryDetailsOTPDetails.self, from: data)
                        
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
        * Summary: Verify OTP for wallet.
        * Description: Verify OTP provided by the user and adds a wallet beneficiary.
        **/
        public func verifyOtpAndAddBeneficiaryForWallet(
            body: WalletOtp,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: WalletOtpDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["verifyOtpAndAddBeneficiaryForWallet"] ?? ""
            
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
                        
                        let response = Utility.decode(WalletOtpDetails.self, from: data)
                        
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
        * Summary: Set default beneficiary for refund
        * Description: Update default beneficiary for the order refund of the user.
        **/
        public func updateDefaultBeneficiary(
            body: SetDefaultBeneficiary,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: SetDefaultBeneficiaryDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["updateDefaultBeneficiary"] ?? ""
            
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
                        
                        let response = Utility.decode(SetDefaultBeneficiaryDetails.self, from: data)
                        
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
        * Summary: Get Payment status and information for a list of order_ids
        * Description: Use this API to get Payment status and information for a list of order_ids.
        **/
        public func getBenficiaryOrder(
            body: RefundOrderBen,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: RefundOrderBenDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getBenficiaryOrder"] ?? ""
            
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
                        
                        let response = Utility.decode(RefundOrderBenDetails.self, from: data)
                        
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
        * Summary: Fetch payment link.
        * Description: Get a generated payment link.
        **/
        public func getPaymentLink(
            paymentLinkId: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetPaymentLinkDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = paymentLinkId {
                xQuery["payment_link_id"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getPaymentLink"] ?? ""
            
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
                        
                        let response = Utility.decode(GetPaymentLinkDetails.self, from: data)
                        
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
        * Summary: Create payment link.
        * Description: Create new payment link for transactions.
        **/
        public func createPaymentLink(
            body: CreatePaymentLink,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CreatePaymentLinkDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["createPaymentLink"] ?? ""
            
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
                        
                        let response = Utility.decode(CreatePaymentLinkDetails.self, from: data)
                        
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
        * Summary: Get payment link
        * Description: get a payment link.
        **/
        public func getPaymentLinkId(
            id: String,
            paymentLinkId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetPaymentLinkDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["payment_link_id"] = paymentLinkId
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getPaymentLinkId"] ?? ""
            
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
                        
                        let response = Utility.decode(GetPaymentLinkDetails.self, from: data)
                        
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
        * Summary: Resend payment link
        * Description: Resend an existing payment link to the user to complete the payment.
        **/
        public func resendPaymentLink(
            body: CancelOrResendPaymentLink,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ResendPaymentLinkDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["resendPaymentLink"] ?? ""
            
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
                        
                        let response = Utility.decode(ResendPaymentLinkDetails.self, from: data)
                        
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
        * Summary: Payment link modes.
        * Description: List payment modes available for a given payment link.
        **/
        public func getPaymentModeRoutesPaymentLink(
            paymentLinkId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PaymentModeRouteDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["payment_link_id"] = paymentLinkId
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getPaymentModeRoutesPaymentLink"] ?? ""
            
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
                        
                        let response = Utility.decode(PaymentModeRouteDetails.self, from: data)
                        
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
        * Summary: Poll payment link.
        * Description: Get real-time information about the payment link's current status, such as whether it has been processed, cancelled, or expired.
        **/
        public func pollingPaymentLink(
            paymentLinkId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PollingPaymentLinkDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["payment_link_id"] = paymentLinkId
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["pollingPaymentLink"] ?? ""
            
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
                        
                        let response = Utility.decode(PollingPaymentLinkDetails.self, from: data)
                        
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
        * Summary: Order via link.
        * Description: Initiate the creation of an order handler for processing payments through a link.
        **/
        public func createOrderHandlerPaymentLink(
            body: CreateOrderUser,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CreateOrderUserDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["createOrderHandlerPaymentLink"] ?? ""
            
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
                        
                        let response = Utility.decode(CreateOrderUserDetails.self, from: data)
                        
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
        * Summary: Initialise link payment.
        * Description: Begin payment process for an order by initializing it through a payment link.Upon successful initialization, the response includes details about the payment status, aggregator details, order IDs, polling URL for status updates, and other relevant information.
        **/
        public func initialisePaymentPaymentLink(
            body: PaymentInitialization,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PaymentInitializationDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["initialisePaymentPaymentLink"] ?? ""
            
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
                        
                        let response = Utility.decode(PaymentInitializationDetails.self, from: data)
                        
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
        * Summary: Performs continuous polling to check status of payment on the server
        * Description: Verify and update status of a payment made through a link.Upon successful verification and update, the response includes details about the aggregator name, payment status, and whether retrying the process is required.
        **/
        public func checkAndUpdatePaymentStatusPaymentLink(
            body: PaymentStatusUpdate,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PaymentStatusUpdateDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["checkAndUpdatePaymentStatusPaymentLink"] ?? ""
            
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
                        
                        let response = Utility.decode(PaymentStatusUpdateDetails.self, from: data)
                        
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
        * Summary: Credit summary.
        * Description: Get summary of the customer's credit information, including details such as merchant customer reference ID, status, balance, limit, due amount, used amount, due date, days overdue, total due amount, and a repayment URL.
        **/
        public func customerCreditSummary(
            aggregator: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CustomerCreditSummaryDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = aggregator {
                xQuery["aggregator"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["customerCreditSummary"] ?? ""
            
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
                        
                        let response = Utility.decode(CustomerCreditSummaryDetails.self, from: data)
                        
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
        * Summary: Redirects users to the payment aggregator's interface
        * Description: This endpoint is used to redirect users to the payment aggregator's platform where they can complete the payment process. The request may include necessary details for initiating the payment on the aggregator�s side, and the user is transferred seamlessly to their interface.
        **/
        public func redirectToAggregator(
            source: String?,
            aggregator: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: RedirectToAggregatorDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = source {
                xQuery["source"] = value
            }
            xQuery["aggregator"] = aggregator
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["redirectToAggregator"] ?? ""
            
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
                        
                        let response = Utility.decode(RedirectToAggregatorDetails.self, from: data)
                        
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
        * Summary: Verify credit availability and status
        * Description: Check the availability and status of customer credit, providing the status of payment along with registration information and signup URL if the customer is not registered.
        **/
        public func checkCredit(
            aggregator: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CheckCreditDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = aggregator {
                xQuery["aggregator"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["checkCredit"] ?? ""
            
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
                        
                        let response = Utility.decode(CheckCreditDetails.self, from: data)
                        
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
        * Summary: Onboard customer for payment
        * Description: Initiate the onboarding process for payment services, providing personal, business, and device information, along with marketplace details, to enable customer registration and credit availability.
        **/
        public func customerOnboard(
            body: CustomerOnboarding,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CustomerOnboardingDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["customerOnboard"] ?? ""
            
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
                        
                        let response = Utility.decode(CustomerOnboardingDetails.self, from: data)
                        
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
        * Summary: Outstanding orders.
        * Description: Get details of orders with outstanding payments.
        **/
        public func outstandingOrderDetails(
            aggregator: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: OutstandingOrderDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = aggregator {
                xQuery["aggregator"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["outstandingOrderDetails"] ?? ""
            
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
                        
                        let response = Utility.decode(OutstandingOrderDetails.self, from: data)
                        
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
        * Summary: Cancel payment link
        * Description: Cancel previously generated payment link.
        **/
        public func cancelPaymentLink(
            body: CancelOrResendPaymentLink,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CancelPaymentLinkDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["cancelPaymentLink"] ?? ""
            
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
                        
                        let response = Utility.decode(CancelPaymentLinkDetails.self, from: data)
                        
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
        * Summary: Retrieve details of paid orders
        * Description: Get details of orders that have been paid for, including shipment ID, order ID, due date, payment date, amount, and transaction ID, based on the aggregator merchant user ID.
        **/
        public func paidOrderDetails(
            aggregator: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PaidOrderDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = aggregator {
                xQuery["aggregator"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["paidOrderDetails"] ?? ""
            
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
                        
                        let response = Utility.decode(PaidOrderDetails.self, from: data)
                        
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
        * Summary: Create Order
        * Description: Create an order and payment on the aggregator side.
        **/
        public func createPaymentOrder(
            body: PaymentOrder,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PaymentOrderDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["createPaymentOrder"] ?? ""
            
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
                        
                        let response = Utility.decode(PaymentOrderDetails.self, from: data)
                        
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
        * Summary: Save refund source against shipment and order
        * Description: Save refund source against shipment and order.
        **/
        public func setRefundOptionforShipment(
            body: ShipmentRefund,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ShipmentRefundDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["setRefundOptionforShipment"] ?? ""
            
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
                        
                        let response = Utility.decode(ShipmentRefundDetails.self, from: data)
                        
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
        * Summary: get the selected refund options for shipment id
        * Description: get the selected refund options for shipment id.
        **/
        public func getSelectedRefundOption(
            shipmentId: String,
            orderId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: SelectedRefundOptionDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["shipment_id"] = shipmentId
            xQuery["order_id"] = orderId
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getSelectedRefundOption"] ?? ""
            
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
                        
                        let response = Utility.decode(SelectedRefundOptionDetails.self, from: data)
                        
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
        * Summary: Retrieve beneficiary details
        * Description: Get beneficiaries associated with the user for processing refunds, based on the provided order ID.
        **/
        public func getUserBeneficiariesDetailV2(
            orderId: String?,
            shipmentId: String?,
            mop: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: OrderBeneficiaryDetailsSchemaV2?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = orderId {
                xQuery["order_id"] = value
            }
            
            if let value = shipmentId {
                xQuery["shipment_id"] = value
            }
            
            if let value = mop {
                xQuery["mop"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getUserBeneficiariesDetailV2"] ?? ""
            
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
                        
                        let response = Utility.decode(OrderBeneficiaryDetailsSchemaV2.self, from: data)
                        
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
        * Summary: Validate UPI ID and IFSC code
        * Description: Validate UPI ID and IFSC code.
        **/
        public func validateBeneficiaryAddress(
            body: ValidateValidateAddress,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ValidateValidateAddressDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["validateBeneficiaryAddress"] ?? ""
            
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
                        
                        let response = Utility.decode(ValidateValidateAddressDetails.self, from: data)
                        
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
        * Summary: Confirm payment after successful payment from payment gateway
        * Description: confirm payment after payment gateway accepted payment.
        **/
        public func confirmPayment(
            body: PaymentConfirmation,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PaymentConfirmationDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["confirmPayment"] ?? ""
            
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
                        
                        let response = Utility.decode(PaymentConfirmationDetails.self, from: data)
                        
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