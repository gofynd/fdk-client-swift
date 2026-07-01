

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AppliedOffer
        Used By: Payment
    */

    class AppliedOffer: Codable {
        
        
        public var isMop: Bool?
        
        public var offerType: String?
        
        public var offerId: String?
        
        public var description: String?
        
        public var amount: Int?
        
        public var meta: [String: Any]?
        
        public var skuDetails: [SkuDetails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isMop = "is_mop"
            
            case offerType = "offer_type"
            
            case offerId = "offer_id"
            
            case description = "description"
            
            case amount = "amount"
            
            case meta = "meta"
            
            case skuDetails = "sku_details"
            
        }

        public init(amount: Int? = nil, description: String? = nil, isMop: Bool? = nil, meta: [String: Any]? = nil, offerId: String? = nil, offerType: String? = nil, skuDetails: [SkuDetails]? = nil) {
            
            self.isMop = isMop
            
            self.offerType = offerType
            
            self.offerId = offerId
            
            self.description = description
            
            self.amount = amount
            
            self.meta = meta
            
            self.skuDetails = skuDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isMop = try container.decode(Bool.self, forKey: .isMop)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerType = try container.decode(String.self, forKey: .offerType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerId = try container.decode(String.self, forKey: .offerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    skuDetails = try container.decode([SkuDetails].self, forKey: .skuDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isMop, forKey: .isMop)
            
            
            
            
            try? container.encodeIfPresent(offerType, forKey: .offerType)
            
            
            
            
            try? container.encodeIfPresent(offerId, forKey: .offerId)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(skuDetails, forKey: .skuDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AppliedOffer
        Used By: Payment
    */

    class AppliedOffer: Codable {
        
        
        public var isMop: Bool?
        
        public var offerType: String?
        
        public var offerId: String?
        
        public var description: String?
        
        public var amount: Int?
        
        public var meta: [String: Any]?
        
        public var skuDetails: [SkuDetails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isMop = "is_mop"
            
            case offerType = "offer_type"
            
            case offerId = "offer_id"
            
            case description = "description"
            
            case amount = "amount"
            
            case meta = "meta"
            
            case skuDetails = "sku_details"
            
        }

        public init(amount: Int? = nil, description: String? = nil, isMop: Bool? = nil, meta: [String: Any]? = nil, offerId: String? = nil, offerType: String? = nil, skuDetails: [SkuDetails]? = nil) {
            
            self.isMop = isMop
            
            self.offerType = offerType
            
            self.offerId = offerId
            
            self.description = description
            
            self.amount = amount
            
            self.meta = meta
            
            self.skuDetails = skuDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isMop = try container.decode(Bool.self, forKey: .isMop)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerType = try container.decode(String.self, forKey: .offerType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerId = try container.decode(String.self, forKey: .offerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    skuDetails = try container.decode([SkuDetails].self, forKey: .skuDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isMop, forKey: .isMop)
            
            
            
            
            try? container.encodeIfPresent(offerType, forKey: .offerType)
            
            
            
            
            try? container.encodeIfPresent(offerId, forKey: .offerId)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(skuDetails, forKey: .skuDetails)
            
            
        }
        
    }
}


