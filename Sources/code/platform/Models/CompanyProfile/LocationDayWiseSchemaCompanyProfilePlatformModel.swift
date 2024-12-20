

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: LocationDayWiseSchema
        Used By: CompanyProfile
    */

    class LocationDayWiseSchema: Codable {
        
        
        public var open: Bool
        
        public var weekday: String
        
        public var opening: LocationTimingSchema?
        
        public var closing: LocationTimingSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case open = "open"
            
            case weekday = "weekday"
            
            case opening = "opening"
            
            case closing = "closing"
            
        }

        public init(closing: LocationTimingSchema? = nil, open: Bool, opening: LocationTimingSchema? = nil, weekday: String) {
            
            self.open = open
            
            self.weekday = weekday
            
            self.opening = opening
            
            self.closing = closing
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                open = try container.decode(Bool.self, forKey: .open)
                
            
            
            
                weekday = try container.decode(String.self, forKey: .weekday)
                
            
            
            
                do {
                    opening = try container.decode(LocationTimingSchema.self, forKey: .opening)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    closing = try container.decode(LocationTimingSchema.self, forKey: .closing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(open, forKey: .open)
            
            
            
            
            try? container.encodeIfPresent(weekday, forKey: .weekday)
            
            
            
            
            try? container.encodeIfPresent(opening, forKey: .opening)
            
            
            
            
            try? container.encodeIfPresent(closing, forKey: .closing)
            
            
        }
        
    }
}




