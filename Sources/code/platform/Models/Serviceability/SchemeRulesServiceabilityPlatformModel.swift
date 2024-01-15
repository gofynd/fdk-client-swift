

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: SchemeRules
        Used By: Serviceability
    */

    class SchemeRules: Codable {
        
        
        public var weight: ArithmeticOperations?
        
        public var transportType: [String]?
        
        public var region: String?
        
        public var paymentMode: [String]?
        
        public var feature: SchemeRulesFeatures?
        

        public enum CodingKeys: String, CodingKey {
            
            case weight = "weight"
            
            case transportType = "transport_type"
            
            case region = "region"
            
            case paymentMode = "payment_mode"
            
            case feature = "feature"
            
        }

        public init(feature: SchemeRulesFeatures? = nil, paymentMode: [String]? = nil, region: String? = nil, transportType: [String]? = nil, weight: ArithmeticOperations? = nil) {
            
            self.weight = weight
            
            self.transportType = transportType
            
            self.region = region
            
            self.paymentMode = paymentMode
            
            self.feature = feature
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    weight = try container.decode(ArithmeticOperations.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transportType = try container.decode([String].self, forKey: .transportType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    region = try container.decode(String.self, forKey: .region)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode([String].self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    feature = try container.decode(SchemeRulesFeatures.self, forKey: .feature)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(transportType, forKey: .transportType)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(feature, forKey: .feature)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: SchemeRules
        Used By: Serviceability
    */

    class SchemeRules: Codable {
        
        
        public var weight: ArithmeticOperations?
        
        public var transportType: [String]?
        
        public var region: String?
        
        public var paymentMode: [String]?
        
        public var feature: SchemeRulesFeatures?
        

        public enum CodingKeys: String, CodingKey {
            
            case weight = "weight"
            
            case transportType = "transport_type"
            
            case region = "region"
            
            case paymentMode = "payment_mode"
            
            case feature = "feature"
            
        }

        public init(feature: SchemeRulesFeatures? = nil, paymentMode: [String]? = nil, region: String? = nil, transportType: [String]? = nil, weight: ArithmeticOperations? = nil) {
            
            self.weight = weight
            
            self.transportType = transportType
            
            self.region = region
            
            self.paymentMode = paymentMode
            
            self.feature = feature
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    weight = try container.decode(ArithmeticOperations.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transportType = try container.decode([String].self, forKey: .transportType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    region = try container.decode(String.self, forKey: .region)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode([String].self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    feature = try container.decode(SchemeRulesFeatures.self, forKey: .feature)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(transportType, forKey: .transportType)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(feature, forKey: .feature)
            
            
        }
        
    }
}


