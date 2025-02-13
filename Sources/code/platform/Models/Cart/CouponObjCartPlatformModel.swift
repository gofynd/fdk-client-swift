

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CouponObj
        Used By: Cart
    */

    class CouponObj: Codable {
        
        
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
        

        public enum CodingKeys: String, CodingKey {
            
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
            
        }

        public init(author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, medias: [CouponMedias]? = nil, ownership: Ownership, ruleDefinition: RuleDefinition, state: State? = nil, typeSlug: String, id: String? = nil, schedule: CouponSchedule? = nil) {
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
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
            
            
        }
        
    }
}


