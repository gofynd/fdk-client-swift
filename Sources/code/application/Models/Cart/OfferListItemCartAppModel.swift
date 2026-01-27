

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: OfferListItem
        Used By: Cart
    */
    class OfferListItem: Codable {
        
        public var mode: String
        
        public var offerText: String
        
        public var description: String?
        
        public var id: String
        
        public var code: String
        
        public var name: String
        
        public var type: String
        
        public var offerLabel: String?
        
        public var maxDiscountValue: Double?
        
        public var appliedDiscountAmount: Double?
        
        public var isApplicable: Bool
        
        public var isApplied: Bool
        
        public var isBankOffer: Bool?
        
        public var startDate: String
        
        public var endDate: String
        

        public enum CodingKeys: String, CodingKey {
            
            case mode = "mode"
            
            case offerText = "offer_text"
            
            case description = "description"
            
            case id = "id"
            
            case code = "code"
            
            case name = "name"
            
            case type = "type"
            
            case offerLabel = "offer_label"
            
            case maxDiscountValue = "max_discount_value"
            
            case appliedDiscountAmount = "applied_discount_amount"
            
            case isApplicable = "is_applicable"
            
            case isApplied = "is_applied"
            
            case isBankOffer = "is_bank_offer"
            
            case startDate = "start_date"
            
            case endDate = "end_date"
            
        }

        public init(appliedDiscountAmount: Double? = nil, code: String, description: String? = nil, endDate: String, id: String, isApplicable: Bool, isApplied: Bool, isBankOffer: Bool? = nil, maxDiscountValue: Double? = nil, mode: String, name: String, offerLabel: String? = nil, offerText: String, startDate: String, type: String) {
            
            self.mode = mode
            
            self.offerText = offerText
            
            self.description = description
            
            self.id = id
            
            self.code = code
            
            self.name = name
            
            self.type = type
            
            self.offerLabel = offerLabel
            
            self.maxDiscountValue = maxDiscountValue
            
            self.appliedDiscountAmount = appliedDiscountAmount
            
            self.isApplicable = isApplicable
            
            self.isApplied = isApplied
            
            self.isBankOffer = isBankOffer
            
            self.startDate = startDate
            
            self.endDate = endDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            mode = try container.decode(String.self, forKey: .mode)
            
            
            
            
            offerText = try container.decode(String.self, forKey: .offerText)
            
            
            
            
            do {
                description = try container.decode(String.self, forKey: .description)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            id = try container.decode(String.self, forKey: .id)
            
            
            
            
            code = try container.decode(String.self, forKey: .code)
            
            
            
            
            name = try container.decode(String.self, forKey: .name)
            
            
            
            
            type = try container.decode(String.self, forKey: .type)
            
            
            
            
            do {
                offerLabel = try container.decode(String.self, forKey: .offerLabel)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                appliedDiscountAmount = try container.decode(Double.self, forKey: .appliedDiscountAmount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            isApplicable = try container.decode(Bool.self, forKey: .isApplicable)
            
            
            
            
            isApplied = try container.decode(Bool.self, forKey: .isApplied)
            
            
            
            
            do {
                isBankOffer = try container.decode(Bool.self, forKey: .isBankOffer)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            startDate = try container.decode(String.self, forKey: .startDate)
            
            
            
            
            endDate = try container.decode(String.self, forKey: .endDate)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            try? container.encodeIfPresent(offerText, forKey: .offerText)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(offerLabel, forKey: .offerLabel)
            
            
            
            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
            
            
            
            try? container.encodeIfPresent(appliedDiscountAmount, forKey: .appliedDiscountAmount)
            
            
            
            try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
            
            try? container.encodeIfPresent(isBankOffer, forKey: .isBankOffer)
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
        }
        
    }
}
