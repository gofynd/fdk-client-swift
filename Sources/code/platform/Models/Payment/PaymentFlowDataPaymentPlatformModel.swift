

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentFlowData
        Used By: Payment
    */

    class PaymentFlowData: Codable {
        
        
        public var isCustomerValidationRequired: Bool?
        
        public var custValidationUrl: String?
        
        public var config: PaymentConfig?
        
        public var data: GatewayData?
        
        public var returnUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isCustomerValidationRequired = "is_customer_validation_required"
            
            case custValidationUrl = "cust_validation_url"
            
            case config = "config"
            
            case data = "data"
            
            case returnUrl = "return_url"
            
        }

        public init(config: PaymentConfig? = nil, custValidationUrl: String? = nil, data: GatewayData? = nil, isCustomerValidationRequired: Bool? = nil, returnUrl: String? = nil) {
            
            self.isCustomerValidationRequired = isCustomerValidationRequired
            
            self.custValidationUrl = custValidationUrl
            
            self.config = config
            
            self.data = data
            
            self.returnUrl = returnUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    config = try container.decode(PaymentConfig.self, forKey: .config)
                
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
                    returnUrl = try container.decode(String.self, forKey: .returnUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isCustomerValidationRequired, forKey: .isCustomerValidationRequired)
            
            
            
            
            try? container.encodeIfPresent(custValidationUrl, forKey: .custValidationUrl)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(returnUrl, forKey: .returnUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentFlowData
        Used By: Payment
    */

    class PaymentFlowData: Codable {
        
        
        public var isCustomerValidationRequired: Bool?
        
        public var custValidationUrl: String?
        
        public var config: PaymentConfig?
        
        public var data: GatewayData?
        
        public var returnUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isCustomerValidationRequired = "is_customer_validation_required"
            
            case custValidationUrl = "cust_validation_url"
            
            case config = "config"
            
            case data = "data"
            
            case returnUrl = "return_url"
            
        }

        public init(config: PaymentConfig? = nil, custValidationUrl: String? = nil, data: GatewayData? = nil, isCustomerValidationRequired: Bool? = nil, returnUrl: String? = nil) {
            
            self.isCustomerValidationRequired = isCustomerValidationRequired
            
            self.custValidationUrl = custValidationUrl
            
            self.config = config
            
            self.data = data
            
            self.returnUrl = returnUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    config = try container.decode(PaymentConfig.self, forKey: .config)
                
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
                    returnUrl = try container.decode(String.self, forKey: .returnUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isCustomerValidationRequired, forKey: .isCustomerValidationRequired)
            
            
            
            
            try? container.encodeIfPresent(custValidationUrl, forKey: .custValidationUrl)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(returnUrl, forKey: .returnUrl)
            
            
        }
        
    }
}


