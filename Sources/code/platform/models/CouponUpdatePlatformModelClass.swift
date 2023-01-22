

import Foundation
public extension PlatformClient {
    /*
        Model: CouponUpdate
        Used By: Cart
    */

    class CouponUpdate: Codable {
        
        
        public var ownership: Ownership
        
        public var rule: [Rule]
        
        public var validation: Validation?
        
        public var author: CouponAuthor?
        
        public var dateMeta: CouponDateMeta?
        
        public var action: CouponAction?
        
        public var schedule: CouponSchedule?
        
        public var ruleDefinition: RuleDefinition
        
        public var displayMeta: DisplayMeta
        
        public var identifiers: Identifier
        
        public var typeSlug: String
        
        public var state: State?
        
        public var tags: [String]?
        
        public var code: String
        
        public var restrictions: Restrictions?
        
        public var validity: Validity
        

        public enum CodingKeys: String, CodingKey {
            
            case ownership = "ownership"
            
            case rule = "rule"
            
            case validation = "validation"
            
            case author = "author"
            
            case dateMeta = "date_meta"
            
            case action = "action"
            
            case schedule = "_schedule"
            
            case ruleDefinition = "rule_definition"
            
            case displayMeta = "display_meta"
            
            case identifiers = "identifiers"
            
            case typeSlug = "type_slug"
            
            case state = "state"
            
            case tags = "tags"
            
            case code = "code"
            
            case restrictions = "restrictions"
            
            case validity = "validity"
            
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            
            self.ownership = ownership
            
            self.rule = rule
            
            self.validation = validation
            
            self.author = author
            
            self.dateMeta = dateMeta
            
            self.action = action
            
            self.schedule = schedule
            
            self.ruleDefinition = ruleDefinition
            
            self.displayMeta = displayMeta
            
            self.identifiers = identifiers
            
            self.typeSlug = typeSlug
            
            self.state = state
            
            self.tags = tags
            
            self.code = code
            
            self.restrictions = restrictions
            
            self.validity = validity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ownership = try container.decode(Ownership.self, forKey: .ownership)
                
            
            
            
                rule = try container.decode([Rule].self, forKey: .rule)
                
            
            
            
                do {
                    validation = try container.decode(Validation.self, forKey: .validation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(CouponAuthor.self, forKey: .author)
                
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
                
            
            
                do {
                    action = try container.decode(CouponAction.self, forKey: .action)
                
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
                
            
            
                ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)
                
            
            
            
                displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)
                
            
            
            
                identifiers = try container.decode(Identifier.self, forKey: .identifiers)
                
            
            
            
                typeSlug = try container.decode(String.self, forKey: .typeSlug)
                
            
            
            
                do {
                    state = try container.decode(State.self, forKey: .state)
                
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
                
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                do {
                    restrictions = try container.decode(Restrictions.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                validity = try container.decode(Validity.self, forKey: .validity)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(validation, forKey: .validation)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(validity, forKey: .validity)
            
            
        }
        
    }
}
