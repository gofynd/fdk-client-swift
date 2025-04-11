

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: GatewayData
        Used By: Payment
    */
    class GatewayData: Codable {
        
        public var route: String?
        
        public var entity: String?
        
        public var isCustomerValidationRequired: Bool?
        
        public var custValidationUrl: String?
        
        public var sdk: SDKDetails?
        
        public var returnUrl: String?
        
        public var userEmail: String?
        
        public var userPhone: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case route = "route"
            
            case entity = "entity"
            
            case isCustomerValidationRequired = "is_customer_validation_required"
            
            case custValidationUrl = "cust_validation_url"
            
            case sdk = "sdk"
            
            case returnUrl = "return_url"
            
            case userEmail = "user_email"
            
            case userPhone = "user_phone"
            
        }

        public init(custValidationUrl: String? = nil, entity: String? = nil, isCustomerValidationRequired: Bool? = nil, returnUrl: String? = nil, route: String? = nil, sdk: SDKDetails? = nil, userEmail: String? = nil, userPhone: String? = nil) {
            
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
