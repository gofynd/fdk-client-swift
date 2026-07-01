

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: RefundOption
        Used By: Order
    */
    class RefundOption: Codable {
        
        public var slug: String
        
        public var displayName: String
        
        public var amount: Double
        
        public var currencySymbol: String
        
        public var message: String
        
        public var logo: String
        
        public var beneficiaryType: String?
        
        public var suggestedList: [String]?
        
        public var refundModes: [RefundMode]
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case displayName = "display_name"
            
            case amount = "amount"
            
            case currencySymbol = "currency_symbol"
            
            case message = "message"
            
            case logo = "logo"
            
            case beneficiaryType = "beneficiary_type"
            
            case suggestedList = "suggested_list"
            
            case refundModes = "refund_modes"
            
        }

        public init(amount: Double, beneficiaryType: String? = nil, currencySymbol: String, displayName: String, logo: String, message: String, refundModes: [RefundMode], slug: String, suggestedList: [String]? = nil) {
            
            self.slug = slug
            
            self.displayName = displayName
            
            self.amount = amount
            
            self.currencySymbol = currencySymbol
            
            self.message = message
            
            self.logo = logo
            
            self.beneficiaryType = beneficiaryType
            
            self.suggestedList = suggestedList
            
            self.refundModes = refundModes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            slug = try container.decode(String.self, forKey: .slug)
            
            
            
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            
            
            
            amount = try container.decode(Double.self, forKey: .amount)
            
            
            
            
            currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
            
            
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
            
            logo = try container.decode(String.self, forKey: .logo)
            
            
            
            
            do {
                beneficiaryType = try container.decode(String.self, forKey: .beneficiaryType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                suggestedList = try container.decode([String].self, forKey: .suggestedList)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            refundModes = try container.decode([RefundMode].self, forKey: .refundModes)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            try? container.encodeIfPresent(beneficiaryType, forKey: .beneficiaryType)
            
            
            
            try? container.encodeIfPresent(suggestedList, forKey: .suggestedList)
            
            
            
            try? container.encodeIfPresent(refundModes, forKey: .refundModes)
            
            
        }
        
    }
}
