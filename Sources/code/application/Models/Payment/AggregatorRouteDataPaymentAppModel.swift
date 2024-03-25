

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: AggregatorRouteData
        Used By: Payment
    */
    class AggregatorRouteData: Codable {
        
        public var gateway: GatewayData?
        
        public var paymentFlowData: PaymentFlowData?
        
        public var data: GatewayData?
        
        public var paymentFlow: String?
        
        public var apiLink: String?
        
        public var route: String?
        
        public var entity: String?
        
        public var isCustomerValidationRequired: Bool?
        
        public var custValidationUrl: String?
        
        public var sdk: SDKDetails?
        
        public var returnUrl: String?
        
        public var userEmail: String?
        
        public var userPhone: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case gateway = "gateway"
            
            case paymentFlowData = "payment_flow_data"
            
            case data = "data"
            
            case paymentFlow = "payment_flow"
            
            case apiLink = "api_link"
            
            case route = "route"
            
            case entity = "entity"
            
            case isCustomerValidationRequired = "is_customer_validation_required"
            
            case custValidationUrl = "cust_validation_url"
            
            case sdk = "sdk"
            
            case returnUrl = "return_url"
            
            case userEmail = "user_email"
            
            case userPhone = "user_phone"
            
        }

        public init(apiLink: String? = nil, custValidationUrl: String? = nil, data: GatewayData? = nil, entity: String? = nil, gateway: GatewayData? = nil, isCustomerValidationRequired: Bool? = nil, paymentFlow: String? = nil, paymentFlowData: PaymentFlowData? = nil, returnUrl: String? = nil, route: String? = nil, sdk: SDKDetails? = nil, userEmail: String? = nil, userPhone: String? = nil) {
            
            self.gateway = gateway
            
            self.paymentFlowData = paymentFlowData
            
            self.data = data
            
            self.paymentFlow = paymentFlow
            
            self.apiLink = apiLink
            
            self.route = route
            
            self.entity = entity
            
            self.isCustomerValidationRequired = isCustomerValidationRequired
            
            self.custValidationUrl = custValidationUrl
            
            self.sdk = sdk
            
            self.returnUrl = returnUrl
            
            self.userEmail = userEmail
            
            self.userPhone = userPhone
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                gateway = try container.decode(GatewayData.self, forKey: .gateway)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentFlowData = try container.decode(PaymentFlowData.self, forKey: .paymentFlowData)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                data = try container.decode(GatewayData.self, forKey: .data)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentFlow = try container.decode(String.self, forKey: .paymentFlow)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                apiLink = try container.decode(String.self, forKey: .apiLink)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                route = try container.decode(String.self, forKey: .route)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                entity = try container.decode(String.self, forKey: .entity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isCustomerValidationRequired = try container.decode(Bool.self, forKey: .isCustomerValidationRequired)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                custValidationUrl = try container.decode(String.self, forKey: .custValidationUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sdk = try container.decode(SDKDetails.self, forKey: .sdk)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                returnUrl = try container.decode(String.self, forKey: .returnUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                userEmail = try container.decode(String.self, forKey: .userEmail)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                userPhone = try container.decode(String.self, forKey: .userPhone)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(gateway, forKey: .gateway)
            
            
            
            try? container.encodeIfPresent(paymentFlowData, forKey: .paymentFlowData)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            try? container.encodeIfPresent(paymentFlow, forKey: .paymentFlow)
            
            
            
            try? container.encodeIfPresent(apiLink, forKey: .apiLink)
            
            
            
            try? container.encodeIfPresent(route, forKey: .route)
            
            
            
            try? container.encodeIfPresent(entity, forKey: .entity)
            
            
            
            try? container.encodeIfPresent(isCustomerValidationRequired, forKey: .isCustomerValidationRequired)
            
            
            
            try? container.encodeIfPresent(custValidationUrl, forKey: .custValidationUrl)
            
            
            
            try? container.encodeIfPresent(sdk, forKey: .sdk)
            
            
            
            try? container.encodeIfPresent(returnUrl, forKey: .returnUrl)
            
            
            
            try? container.encodeIfPresent(userEmail, forKey: .userEmail)
            
            
            
            try? container.encodeIfPresent(userPhone, forKey: .userPhone)
            
            
        }
        
    }
}
