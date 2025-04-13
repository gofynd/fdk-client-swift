

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierAccountSchemeResponse
        Used By: Serviceability
    */

    class CourierAccountSchemeResponse: Codable {
        
        
        public var name: String?
        
        public var extensionId: String?
        
        public var schemeId: String?
        
        public var weight: ArithmeticOperations?
        
        public var transportType: String?
        
        public var region: String?
        
        public var deliveryType: String?
        
        public var paymentMode: [String]?
        
        public var stage: String?
        
        public var feature: CourierPartnerSchemeFeatures?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case extensionId = "extension_id"
            
            case schemeId = "scheme_id"
            
            case weight = "weight"
            
            case transportType = "transport_type"
            
            case region = "region"
            
            case deliveryType = "delivery_type"
            
            case paymentMode = "payment_mode"
            
            case stage = "stage"
            
            case feature = "feature"
            
        }

        public init(deliveryType: String? = nil, extensionId: String? = nil, feature: CourierPartnerSchemeFeatures? = nil, name: String? = nil, paymentMode: [String]? = nil, region: String? = nil, schemeId: String? = nil, stage: String? = nil, transportType: String? = nil, weight: ArithmeticOperations? = nil) {
            
            self.name = name
            
            self.extensionId = extensionId
            
            self.schemeId = schemeId
            
            self.weight = weight
            
            self.transportType = transportType
            
            self.region = region
            
            self.deliveryType = deliveryType
            
            self.paymentMode = paymentMode
            
            self.stage = stage
            
            self.feature = feature
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schemeId = try container.decode(String.self, forKey: .schemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(ArithmeticOperations.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transportType = try container.decode(String.self, forKey: .transportType)
                
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
                    deliveryType = try container.decode(String.self, forKey: .deliveryType)
                
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
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    feature = try container.decode(CourierPartnerSchemeFeatures.self, forKey: .feature)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(transportType, forKey: .transportType)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(deliveryType, forKey: .deliveryType)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(feature, forKey: .feature)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierAccountSchemeResponse
        Used By: Serviceability
    */

    class CourierAccountSchemeResponse: Codable {
        
        
        public var name: String?
        
        public var extensionId: String?
        
        public var schemeId: String?
        
        public var weight: ArithmeticOperations?
        
        public var transportType: String?
        
        public var region: String?
        
        public var deliveryType: String?
        
        public var paymentMode: [String]?
        
        public var stage: String?
        
        public var feature: CourierPartnerSchemeFeatures?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case extensionId = "extension_id"
            
            case schemeId = "scheme_id"
            
            case weight = "weight"
            
            case transportType = "transport_type"
            
            case region = "region"
            
            case deliveryType = "delivery_type"
            
            case paymentMode = "payment_mode"
            
            case stage = "stage"
            
            case feature = "feature"
            
        }

        public init(deliveryType: String? = nil, extensionId: String? = nil, feature: CourierPartnerSchemeFeatures? = nil, name: String? = nil, paymentMode: [String]? = nil, region: String? = nil, schemeId: String? = nil, stage: String? = nil, transportType: String? = nil, weight: ArithmeticOperations? = nil) {
            
            self.name = name
            
            self.extensionId = extensionId
            
            self.schemeId = schemeId
            
            self.weight = weight
            
            self.transportType = transportType
            
            self.region = region
            
            self.deliveryType = deliveryType
            
            self.paymentMode = paymentMode
            
            self.stage = stage
            
            self.feature = feature
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schemeId = try container.decode(String.self, forKey: .schemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(ArithmeticOperations.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transportType = try container.decode(String.self, forKey: .transportType)
                
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
                    deliveryType = try container.decode(String.self, forKey: .deliveryType)
                
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
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    feature = try container.decode(CourierPartnerSchemeFeatures.self, forKey: .feature)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(transportType, forKey: .transportType)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(deliveryType, forKey: .deliveryType)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(feature, forKey: .feature)
            
            
        }
        
    }
}


