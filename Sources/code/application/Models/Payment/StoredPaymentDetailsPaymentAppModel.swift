

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: StoredPaymentDetails
        Used By: Payment
    */
    class StoredPaymentDetails: Codable {
        
        public var aggregatorName: String?
        
        public var cardNumber: String?
        
        public var cardReference: String?
        
        public var cardIssuer: String?
        
        public var compliantWithTokenisationGuidelines: Bool?
        
        public var cardFingerprint: String?
        
        public var expired: Bool?
        
        public var expYear: Int?
        
        public var expMonth: Int?
        
        public var cardId: String?
        
        public var cardBrand: String?
        
        public var logoUrl: PaymentModeLogo?
        
        public var nickname: String?
        
        public var cardName: String?
        
        public var cardType: String?
        
        public var cardBrandImage: String?
        
        public var displayName: String?
        
        public var cardIsin: String?
        
        public var cvvLength: Int?
        
        public var cvvLess: Bool?
        
        public var cardToken: String?
        
        public var name: String?
        
        public var meta: [String: Any]?
        
        public var vpa: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregatorName = "aggregator_name"
            
            case cardNumber = "card_number"
            
            case cardReference = "card_reference"
            
            case cardIssuer = "card_issuer"
            
            case compliantWithTokenisationGuidelines = "compliant_with_tokenisation_guidelines"
            
            case cardFingerprint = "card_fingerprint"
            
            case expired = "expired"
            
            case expYear = "exp_year"
            
            case expMonth = "exp_month"
            
            case cardId = "card_id"
            
            case cardBrand = "card_brand"
            
            case logoUrl = "logo_url"
            
            case nickname = "nickname"
            
            case cardName = "card_name"
            
            case cardType = "card_type"
            
            case cardBrandImage = "card_brand_image"
            
            case displayName = "display_name"
            
            case cardIsin = "card_isin"
            
            case cvvLength = "cvv_length"
            
            case cvvLess = "cvv_less"
            
            case cardToken = "card_token"
            
            case name = "name"
            
            case meta = "meta"
            
            case vpa = "vpa"
            
        }

        public init(aggregatorName: String? = nil, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, compliantWithTokenisationGuidelines: Bool? = nil, cvvLength: Int? = nil, cvvLess: Bool? = nil, displayName: String? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, logoUrl: PaymentModeLogo? = nil, meta: [String: Any]? = nil, name: String? = nil, nickname: String? = nil, vpa: String? = nil) {
            
            self.aggregatorName = aggregatorName
            
            self.cardNumber = cardNumber
            
            self.cardReference = cardReference
            
            self.cardIssuer = cardIssuer
            
            self.compliantWithTokenisationGuidelines = compliantWithTokenisationGuidelines
            
            self.cardFingerprint = cardFingerprint
            
            self.expired = expired
            
            self.expYear = expYear
            
            self.expMonth = expMonth
            
            self.cardId = cardId
            
            self.cardBrand = cardBrand
            
            self.logoUrl = logoUrl
            
            self.nickname = nickname
            
            self.cardName = cardName
            
            self.cardType = cardType
            
            self.cardBrandImage = cardBrandImage
            
            self.displayName = displayName
            
            self.cardIsin = cardIsin
            
            self.cvvLength = cvvLength
            
            self.cvvLess = cvvLess
            
            self.cardToken = cardToken
            
            self.name = name
            
            self.meta = meta
            
            self.vpa = vpa
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cardNumber = try container.decode(String.self, forKey: .cardNumber)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cardReference = try container.decode(String.self, forKey: .cardReference)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                compliantWithTokenisationGuidelines = try container.decode(Bool.self, forKey: .compliantWithTokenisationGuidelines)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                expired = try container.decode(Bool.self, forKey: .expired)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                expYear = try container.decode(Int.self, forKey: .expYear)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                expMonth = try container.decode(Int.self, forKey: .expMonth)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cardId = try container.decode(String.self, forKey: .cardId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cardBrand = try container.decode(String.self, forKey: .cardBrand)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                nickname = try container.decode(String.self, forKey: .nickname)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cardName = try container.decode(String.self, forKey: .cardName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cardType = try container.decode(String.self, forKey: .cardType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                displayName = try container.decode(String.self, forKey: .displayName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cardIsin = try container.decode(String.self, forKey: .cardIsin)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cvvLength = try container.decode(Int.self, forKey: .cvvLength)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cvvLess = try container.decode(Bool.self, forKey: .cvvLess)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
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
                vpa = try container.decode(String.self, forKey: .vpa)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            
            
            try? container.encodeIfPresent(cardNumber, forKey: .cardNumber)
            
            
            
            try? container.encodeIfPresent(cardReference, forKey: .cardReference)
            
            
            
            try? container.encodeIfPresent(cardIssuer, forKey: .cardIssuer)
            
            
            
            try? container.encodeIfPresent(compliantWithTokenisationGuidelines, forKey: .compliantWithTokenisationGuidelines)
            
            
            
            try? container.encodeIfPresent(cardFingerprint, forKey: .cardFingerprint)
            
            
            
            try? container.encodeIfPresent(expired, forKey: .expired)
            
            
            
            try? container.encodeIfPresent(expYear, forKey: .expYear)
            
            
            
            try? container.encodeIfPresent(expMonth, forKey: .expMonth)
            
            
            
            try? container.encodeIfPresent(cardId, forKey: .cardId)
            
            
            
            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
            
            
            
            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
            
            
            
            try? container.encodeIfPresent(nickname, forKey: .nickname)
            
            
            
            try? container.encodeIfPresent(cardName, forKey: .cardName)
            
            
            
            try? container.encodeIfPresent(cardType, forKey: .cardType)
            
            
            
            try? container.encodeIfPresent(cardBrandImage, forKey: .cardBrandImage)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(cardIsin, forKey: .cardIsin)
            
            
            
            try? container.encodeIfPresent(cvvLength, forKey: .cvvLength)
            
            
            
            try? container.encodeIfPresent(cvvLess, forKey: .cvvLess)
            
            
            
            try? container.encodeIfPresent(cardToken, forKey: .cardToken)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            
        }
        
    }
}
