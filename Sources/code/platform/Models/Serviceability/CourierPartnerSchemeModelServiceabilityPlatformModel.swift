

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerSchemeModel
        Used By: Serviceability
    */

    class CourierPartnerSchemeModel: Codable {
        
        
        public var extensionId: String
        
        public var schemeId: String
        
        public var weight: ArithmeticOperations
        
        public var transportType: String
        
        public var region: String
        
        public var deliveryType: String
        
        public var paymentMode: [String]
        
        public var stage: String
        
        public var feature: CourierPartnerSchemeFeatures
        

        public enum CodingKeys: String, CodingKey {
            
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

        public init(deliveryType: String, extensionId: String, feature: CourierPartnerSchemeFeatures, paymentMode: [String], region: String, schemeId: String, stage: String, transportType: String, weight: ArithmeticOperations) {
            
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
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                weight = try container.decode(ArithmeticOperations.self, forKey: .weight)
                
            
            
            
                transportType = try container.decode(String.self, forKey: .transportType)
                
            
            
            
                region = try container.decode(String.self, forKey: .region)
                
            
            
            
                deliveryType = try container.decode(String.self, forKey: .deliveryType)
                
            
            
            
                paymentMode = try container.decode([String].self, forKey: .paymentMode)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                feature = try container.decode(CourierPartnerSchemeFeatures.self, forKey: .feature)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
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
        Model: CourierPartnerSchemeModel
        Used By: Serviceability
    */

    class CourierPartnerSchemeModel: Codable {
        
        
        public var extensionId: String
        
        public var schemeId: String
        
        public var weight: ArithmeticOperations
        
        public var transportType: String
        
        public var region: String
        
        public var deliveryType: String
        
        public var paymentMode: [String]
        
        public var stage: String
        
        public var feature: CourierPartnerSchemeFeatures
        

        public enum CodingKeys: String, CodingKey {
            
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

        public init(deliveryType: String, extensionId: String, feature: CourierPartnerSchemeFeatures, paymentMode: [String], region: String, schemeId: String, stage: String, transportType: String, weight: ArithmeticOperations) {
            
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
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                weight = try container.decode(ArithmeticOperations.self, forKey: .weight)
                
            
            
            
                transportType = try container.decode(String.self, forKey: .transportType)
                
            
            
            
                region = try container.decode(String.self, forKey: .region)
                
            
            
            
                deliveryType = try container.decode(String.self, forKey: .deliveryType)
                
            
            
            
                paymentMode = try container.decode([String].self, forKey: .paymentMode)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                feature = try container.decode(CourierPartnerSchemeFeatures.self, forKey: .feature)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
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


