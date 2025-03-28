

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: ValidateValidateAddress
        Used By: Payment
    */

    class ValidateValidateAddress: Codable {
        
        
        public var ifscCode: String?
        
        public var upiVpa: String?
        
        public var aggregator: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case ifscCode = "ifsc_code"
            
            case upiVpa = "upi_vpa"
            
            case aggregator = "aggregator"
            
        }

        public init(aggregator: String? = nil, ifscCode: String? = nil, upiVpa: String? = nil) {
            
            self.ifscCode = ifscCode
            
            self.upiVpa = upiVpa
            
            self.aggregator = aggregator
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upiVpa = try container.decode(String.self, forKey: .upiVpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(upiVpa, forKey: .upiVpa)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: ValidateValidateAddress
        Used By: Payment
    */

    class ValidateValidateAddress: Codable {
        
        
        public var ifscCode: String?
        
        public var upiVpa: String?
        
        public var aggregator: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case ifscCode = "ifsc_code"
            
            case upiVpa = "upi_vpa"
            
            case aggregator = "aggregator"
            
        }

        public init(aggregator: String? = nil, ifscCode: String? = nil, upiVpa: String? = nil) {
            
            self.ifscCode = ifscCode
            
            self.upiVpa = upiVpa
            
            self.aggregator = aggregator
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upiVpa = try container.decode(String.self, forKey: .upiVpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(upiVpa, forKey: .upiVpa)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
        }
        
    }
}


