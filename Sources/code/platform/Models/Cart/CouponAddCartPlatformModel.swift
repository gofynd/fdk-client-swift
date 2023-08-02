

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CouponAdd
        Used By: Cart
    */

    class CouponAdd: Codable {
        
        
        public var dateMeta: CouponDateMeta?
        
        public var ownership: Ownership
        
        public var author: CouponAuthor?
        
        public var state: State?
        
        public var restrictions: Restrictions?
        
        public var validation: Validation?
        
        public var action: CouponAction?
        
        public var tags: [String]?
        
        public var schedule: CouponSchedule?
        
        public var rule: [Rule]
        
        public var displayMeta: DisplayMeta
        
        public var code: String
        
        public var typeSlug: String
        
        public var identifiers: Identifier
        
        public var validity: Validity
        
        public var ruleDefinition: RuleDefinition
        

        public enum CodingKeys: String, CodingKey {
            
            case dateMeta = "date_meta"
            
            case ownership = "ownership"
            
            case author = "author"
            
            case state = "state"
            
            case restrictions = "restrictions"
            
            case validation = "validation"
            
            case action = "action"
            
            case tags = "tags"
            
            case schedule = "_schedule"
            
            case rule = "rule"
            
            case displayMeta = "display_meta"
            
            case code = "code"
            
            case typeSlug = "type_slug"
            
            case identifiers = "identifiers"
            
            case validity = "validity"
            
            case ruleDefinition = "rule_definition"
            
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            
            self.dateMeta = dateMeta
            
            self.ownership = ownership
            
            self.author = author
            
            self.state = state
            
            self.restrictions = restrictions
            
            self.validation = validation
            
            self.action = action
            
            self.tags = tags
            
            self.schedule = schedule
            
            self.rule = rule
            
            self.displayMeta = displayMeta
            
            self.code = code
            
            self.typeSlug = typeSlug
            
            self.identifiers = identifiers
            
            self.validity = validity
            
            self.ruleDefinition = ruleDefinition
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    restrictions = try container.decode(Restrictions.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    validation = try container.decode(Validation.self, forKey: .validation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(CouponAction.self, forKey: .action)
                
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
                    schedule = try container.decode(CouponSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                rule = try container.decode([Rule].self, forKey: .rule)
                
            
            
            
                displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                typeSlug = try container.decode(String.self, forKey: .typeSlug)
                
            
            
            
                identifiers = try container.decode(Identifier.self, forKey: .identifiers)
                
            
            
            
                validity = try container.decode(Validity.self, forKey: .validity)
                
            
            
            
                ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(validation, forKey: .validation)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(validity, forKey: .validity)
            
            
            
            
            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)
            
            
        }
        
    }
}


