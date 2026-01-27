

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OfferListItem
        Used By: Cart
    */

    class OfferListItem: Codable {
        
        
        public var mode: String?
        
        public var type: String?
        
        public var status: String?
        
        public var published: Bool?
        
        public var displayMeta: OfferDisplayMeta?
        
        public var author: OfferAuthor?
        
        public var dateMeta: OfferDateMeta?
        
        public var schedule: OfferSchedule?
        

        public enum CodingKeys: String, CodingKey {
            
            case mode = "mode"
            
            case type = "type"
            
            case status = "status"
            
            case published = "published"
            
            case displayMeta = "display_meta"
            
            case author = "author"
            
            case dateMeta = "date_meta"
            
            case schedule = "schedule"
            
        }

        public init(author: OfferAuthor? = nil, dateMeta: OfferDateMeta? = nil, displayMeta: OfferDisplayMeta? = nil, mode: String? = nil, published: Bool? = nil, schedule: OfferSchedule? = nil, status: String? = nil, type: String? = nil) {
            
            self.mode = mode
            
            self.type = type
            
            self.status = status
            
            self.published = published
            
            self.displayMeta = displayMeta
            
            self.author = author
            
            self.dateMeta = dateMeta
            
            self.schedule = schedule
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    published = try container.decode(Bool.self, forKey: .published)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayMeta = try container.decode(OfferDisplayMeta.self, forKey: .displayMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(OfferAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateMeta = try container.decode(OfferDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schedule = try container.decode(OfferSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
        }
        
    }
}


