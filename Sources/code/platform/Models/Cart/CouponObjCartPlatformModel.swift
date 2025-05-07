

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CouponObj
        Used By: Cart
    */

    class CouponObj: Codable {
        
        
        public var draft: Double?
        
        public var review: Double?
        
        public var rejected: Double?
        
        public var approved: Double?
        
        public var dateMeta: CouponDateMeta?
        
        public var ownership: Ownership
        
        public var author: CouponAuthor?
        
        public var state: State?
        
        public var schedule: CouponSchedule?
        
        public var displayMeta: DisplayMeta
        
        public var code: String
        
        public var typeSlug: String
        
        public var ruleDefinition: RuleDefinition
        
        public var id: String?
        
        public var medias: [CouponMedias]?
        
        public var identifiers: Identifier?
        
        public var validity: Validity?
        
        public var rule: [Rule]?
        
        public var isArchived: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case draft = "draft"
            
            case review = "review"
            
            case rejected = "rejected"
            
            case approved = "approved"
            
            case dateMeta = "date_meta"
            
            case ownership = "ownership"
            
            case author = "author"
            
            case state = "state"
            
            case schedule = "_schedule"
            
            case displayMeta = "display_meta"
            
            case code = "code"
            
            case typeSlug = "type_slug"
            
            case ruleDefinition = "rule_definition"
            
            case id = "_id"
            
            case medias = "medias"
            
            case identifiers = "identifiers"
            
            case validity = "validity"
            
            case rule = "rule"
            
            case isArchived = "is_archived"
            
        }

        public init(approved: Double? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, draft: Double? = nil, identifiers: Identifier? = nil, isArchived: Bool? = nil, medias: [CouponMedias]? = nil, ownership: Ownership, rejected: Double? = nil, review: Double? = nil, rule: [Rule]? = nil, ruleDefinition: RuleDefinition, state: State? = nil, typeSlug: String, validity: Validity? = nil, id: String? = nil, schedule: CouponSchedule? = nil) {
            
            self.draft = draft
            
            self.review = review
            
            self.rejected = rejected
            
            self.approved = approved
            
            self.dateMeta = dateMeta
            
            self.ownership = ownership
            
            self.author = author
            
            self.state = state
            
            self.schedule = schedule
            
            self.displayMeta = displayMeta
            
            self.code = code
            
            self.typeSlug = typeSlug
            
            self.ruleDefinition = ruleDefinition
            
            self.id = id
            
            self.medias = medias
            
            self.identifiers = identifiers
            
            self.validity = validity
            
            self.rule = rule
            
            self.isArchived = isArchived
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    draft = try container.decode(Double.self, forKey: .draft)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    review = try container.decode(Double.self, forKey: .review)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rejected = try container.decode(Double.self, forKey: .rejected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    approved = try container.decode(Double.self, forKey: .approved)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ownership = try container.decode(Ownership.self, forKey: .ownership)
                
            
            
            
                do {
                    author = try container.decode(CouponAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(State.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schedule = try container.decode(CouponSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                typeSlug = try container.decode(String.self, forKey: .typeSlug)
                
            
            
            
                ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)
                
            
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    medias = try container.decode([CouponMedias].self, forKey: .medias)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    identifiers = try container.decode(Identifier.self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    validity = try container.decode(Validity.self, forKey: .validity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rule = try container.decode([Rule].self, forKey: .rule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isArchived = try container.decode(Bool.self, forKey: .isArchived)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(draft, forKey: .draft)
            
            
            
            
            try? container.encodeIfPresent(review, forKey: .review)
            
            
            
            
            try? container.encodeIfPresent(rejected, forKey: .rejected)
            
            
            
            
            try? container.encodeIfPresent(approved, forKey: .approved)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)
            
            
            
            
            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(validity, forKey: .validity)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
            
            
        }
        
    }
}


