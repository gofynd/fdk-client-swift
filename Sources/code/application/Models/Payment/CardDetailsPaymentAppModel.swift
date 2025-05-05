

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CardDetails
        Used By: Payment
    */
    class CardDetails: Codable {
        
        public var status: Bool
        
        public var country: String
        
        public var bankCode: String
        
        public var id: String
        
        public var cardExpYear: String?
        
        public var cardBrand: String
        
        public var type: String
        
        public var cardSubType: String
        
        public var isDomesticCard: Bool
        
        public var nameOnCard: String?
        
        public var cardExpMonth: String?
        
        public var extendedCardType: String
        
        public var cardObject: String
        
        public var cardToken: String?
        
        public var user: String?
        
        public var bank: String
        
        public var cvvLength: Int?
        
        public var logo: String?
        
        public var isEnabled: Bool?
        
        public var isCardValid: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case country = "country"
            
            case bankCode = "bank_code"
            
            case id = "id"
            
            case cardExpYear = "card_exp_year"
            
            case cardBrand = "card_brand"
            
            case type = "type"
            
            case cardSubType = "card_sub_type"
            
            case isDomesticCard = "is_domestic_card"
            
            case nameOnCard = "name_on_card"
            
            case cardExpMonth = "card_exp_month"
            
            case extendedCardType = "extended_card_type"
            
            case cardObject = "card_object"
            
            case cardToken = "card_token"
            
            case user = "user"
            
            case bank = "bank"
            
            case cvvLength = "cvv_length"
            
            case logo = "logo"
            
            case isEnabled = "is_enabled"
            
            case isCardValid = "is_card_valid"
            
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, cvvLength: Int? = nil, extendedCardType: String, id: String, isCardValid: Bool? = nil, isDomesticCard: Bool, isEnabled: Bool? = nil, logo: String? = nil, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            
            self.status = status
            
            self.country = country
            
            self.bankCode = bankCode
            
            self.id = id
            
            self.cardExpYear = cardExpYear
            
            self.cardBrand = cardBrand
            
            self.type = type
            
            self.cardSubType = cardSubType
            
            self.isDomesticCard = isDomesticCard
            
            self.nameOnCard = nameOnCard
            
            self.cardExpMonth = cardExpMonth
            
            self.extendedCardType = extendedCardType
            
            self.cardObject = cardObject
            
            self.cardToken = cardToken
            
            self.user = user
            
            self.bank = bank
            
            self.cvvLength = cvvLength
            
            self.logo = logo
            
            self.isEnabled = isEnabled
            
            self.isCardValid = isCardValid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            status = try container.decode(Bool.self, forKey: .status)
            
            
            
            
            country = try container.decode(String.self, forKey: .country)
            
            
            
            
            bankCode = try container.decode(String.self, forKey: .bankCode)
            
            
            
            
            id = try container.decode(String.self, forKey: .id)
            
            
            
            
            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            cardBrand = try container.decode(String.self, forKey: .cardBrand)
            
            
            
            
            type = try container.decode(String.self, forKey: .type)
            
            
            
            
            cardSubType = try container.decode(String.self, forKey: .cardSubType)
            
            
            
            
            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)
            
            
            
            
            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)
            
            
            
            
            cardObject = try container.decode(String.self, forKey: .cardObject)
            
            
            
            
            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                user = try container.decode(String.self, forKey: .user)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            bank = try container.decode(String.self, forKey: .bank)
            
            
            
            
            do {
                cvvLength = try container.decode(Int.self, forKey: .cvvLength)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                logo = try container.decode(String.self, forKey: .logo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isEnabled = try container.decode(Bool.self, forKey: .isEnabled)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isCardValid = try container.decode(Bool.self, forKey: .isCardValid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            try? container.encodeIfPresent(bankCode, forKey: .bankCode)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)
            
            
            
            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(cardSubType, forKey: .cardSubType)
            
            
            
            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)
            
            
            
            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)
            
            
            
            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)
            
            
            
            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)
            
            
            
            try? container.encodeIfPresent(cardObject, forKey: .cardObject)
            
            
            
            try? container.encodeIfPresent(cardToken, forKey: .cardToken)
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            try? container.encodeIfPresent(bank, forKey: .bank)
            
            
            
            try? container.encodeIfPresent(cvvLength, forKey: .cvvLength)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            try? container.encodeIfPresent(isEnabled, forKey: .isEnabled)
            
            
            
            try? container.encodeIfPresent(isCardValid, forKey: .isCardValid)
            
            
        }
        
    }
}
