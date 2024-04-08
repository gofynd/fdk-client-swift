

import Foundation
public extension PublicClient.Billing {
    /*
        Model: PlanConfig
        Used By: Billing
    */

    class PlanConfig: Codable {
        
        
        public var isActive: Bool?
        
        public var displayText: String?
        
        public var isDefault: Bool?
        
        public var processingType: String?
        
        public var tags: [String]?
        
        public var featureConfig: FeatureConfig?
        
        public var id: String?
        
        public var componentId: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var v: Int?
        
        public var billingScheme: String?
        
        public var billType: String?
        
        public var priceUiType: String?
        
        public var recurring: PlanRecurring?
        
        public var transformQuantity: TransformQuantity?
        
        public var freeTier: FreeTier?
        
        public var currency: String?
        
        public var unitAmount: Int?
        
        public var quantity: Int?
        
        public var priceType: String?
        
        public var tiers: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case displayText = "display_text"
            
            case isDefault = "is_default"
            
            case processingType = "processing_type"
            
            case tags = "tags"
            
            case featureConfig = "feature_config"
            
            case id = "_id"
            
            case componentId = "component_id"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case v = "__v"
            
            case billingScheme = "billing_scheme"
            
            case billType = "bill_type"
            
            case priceUiType = "price_ui_type"
            
            case recurring = "recurring"
            
            case transformQuantity = "transform_quantity"
            
            case freeTier = "free_tier"
            
            case currency = "currency"
            
            case unitAmount = "unit_amount"
            
            case quantity = "quantity"
            
            case priceType = "price_type"
            
            case tiers = "tiers"
            
        }

        public init(billingScheme: String? = nil, billType: String? = nil, componentId: String? = nil, createdAt: String? = nil, currency: String? = nil, displayText: String? = nil, featureConfig: FeatureConfig? = nil, freeTier: FreeTier? = nil, isActive: Bool? = nil, isDefault: Bool? = nil, modifiedAt: String? = nil, priceType: String? = nil, priceUiType: String? = nil, processingType: String? = nil, quantity: Int? = nil, recurring: PlanRecurring? = nil, tags: [String]? = nil, tiers: [[String: Any]]? = nil, transformQuantity: TransformQuantity? = nil, unitAmount: Int? = nil, id: String? = nil, v: Int? = nil) {
            
            self.isActive = isActive
            
            self.displayText = displayText
            
            self.isDefault = isDefault
            
            self.processingType = processingType
            
            self.tags = tags
            
            self.featureConfig = featureConfig
            
            self.id = id
            
            self.componentId = componentId
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.v = v
            
            self.billingScheme = billingScheme
            
            self.billType = billType
            
            self.priceUiType = priceUiType
            
            self.recurring = recurring
            
            self.transformQuantity = transformQuantity
            
            self.freeTier = freeTier
            
            self.currency = currency
            
            self.unitAmount = unitAmount
            
            self.quantity = quantity
            
            self.priceType = priceType
            
            self.tiers = tiers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayText = try container.decode(String.self, forKey: .displayText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processingType = try container.decode(String.self, forKey: .processingType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    featureConfig = try container.decode(FeatureConfig.self, forKey: .featureConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    componentId = try container.decode(String.self, forKey: .componentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingScheme = try container.decode(String.self, forKey: .billingScheme)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billType = try container.decode(String.self, forKey: .billType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceUiType = try container.decode(String.self, forKey: .priceUiType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    recurring = try container.decode(PlanRecurring.self, forKey: .recurring)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transformQuantity = try container.decode(TransformQuantity.self, forKey: .transformQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    freeTier = try container.decode(FreeTier.self, forKey: .freeTier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unitAmount = try container.decode(Int.self, forKey: .unitAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceType = try container.decode(String.self, forKey: .priceType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tiers = try container.decode([[String: Any]].self, forKey: .tiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(displayText, forKey: .displayText)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            try? container.encodeIfPresent(processingType, forKey: .processingType)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(featureConfig, forKey: .featureConfig)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(componentId, forKey: .componentId)
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            try? container.encodeIfPresent(billingScheme, forKey: .billingScheme)
            
            
            
            try? container.encodeIfPresent(billType, forKey: .billType)
            
            
            
            try? container.encodeIfPresent(priceUiType, forKey: .priceUiType)
            
            
            
            try? container.encodeIfPresent(recurring, forKey: .recurring)
            
            
            
            try? container.encodeIfPresent(transformQuantity, forKey: .transformQuantity)
            
            
            
            try? container.encodeIfPresent(freeTier, forKey: .freeTier)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(unitAmount, forKey: .unitAmount)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(priceType, forKey: .priceType)
            
            
            
            try? container.encodeIfPresent(tiers, forKey: .tiers)
            
            
        }
        
    }
}
