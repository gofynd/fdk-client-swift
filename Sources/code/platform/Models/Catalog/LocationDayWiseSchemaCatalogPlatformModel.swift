

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: LocationDayWiseSchema
        Used By: Catalog
    */

    class LocationDayWiseSchema: Codable {
        
        
        public var closing: LocationTimingSchema?
        
        public var open: Bool
        
        public var opening: LocationTimingSchema?
        
        public var weekday: String
        

        public enum CodingKeys: String, CodingKey {
            
            case closing = "closing"
            
            case open = "open"
            
            case opening = "opening"
            
            case weekday = "weekday"
            
        }

        public init(closing: LocationTimingSchema? = nil, open: Bool, opening: LocationTimingSchema? = nil, weekday: String) {
            
            self.closing = closing
            
            self.open = open
            
            self.opening = opening
            
            self.weekday = weekday
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    closing = try container.decode(LocationTimingSchema.self, forKey: .closing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                open = try container.decode(Bool.self, forKey: .open)
                
            
            
            
                do {
                    opening = try container.decode(LocationTimingSchema.self, forKey: .opening)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                weekday = try container.decode(String.self, forKey: .weekday)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(closing, forKey: .closing)
            
            
            
            
            try? container.encodeIfPresent(open, forKey: .open)
            
            
            
            
            try? container.encodeIfPresent(opening, forKey: .opening)
            
            
            
            
            try? container.encodeIfPresent(weekday, forKey: .weekday)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: LocationDayWiseSchema
        Used By: Catalog
    */

    class LocationDayWiseSchema: Codable {
        
        
        public var closing: LocationTimingSchema?
        
        public var open: Bool
        
        public var opening: LocationTimingSchema?
        
        public var weekday: String
        

        public enum CodingKeys: String, CodingKey {
            
            case closing = "closing"
            
            case open = "open"
            
            case opening = "opening"
            
            case weekday = "weekday"
            
        }

        public init(closing: LocationTimingSchema? = nil, open: Bool, opening: LocationTimingSchema? = nil, weekday: String) {
            
            self.closing = closing
            
            self.open = open
            
            self.opening = opening
            
            self.weekday = weekday
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    closing = try container.decode(LocationTimingSchema.self, forKey: .closing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                open = try container.decode(Bool.self, forKey: .open)
                
            
            
            
                do {
                    opening = try container.decode(LocationTimingSchema.self, forKey: .opening)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                weekday = try container.decode(String.self, forKey: .weekday)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(closing, forKey: .closing)
            
            
            
            
            try? container.encodeIfPresent(open, forKey: .open)
            
            
            
            
            try? container.encodeIfPresent(opening, forKey: .opening)
            
            
            
            
            try? container.encodeIfPresent(weekday, forKey: .weekday)
            
            
        }
        
    }
}


