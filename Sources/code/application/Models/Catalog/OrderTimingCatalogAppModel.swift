

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: OrderTiming
        Used By: Catalog
    */
    class OrderTiming: Codable {
        
        public var weekday: String?
        
        public var opening: Time?
        
        public var closing: Time?
        
        public var open: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case weekday = "weekday"
            
            case opening = "opening"
            
            case closing = "closing"
            
            case open = "open"
            
        }

        public init(closing: Time? = nil, open: Bool? = nil, opening: Time? = nil, weekday: String? = nil) {
            
            self.weekday = weekday
            
            self.opening = opening
            
            self.closing = closing
            
            self.open = open
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                weekday = try container.decode(String.self, forKey: .weekday)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                opening = try container.decode(Time.self, forKey: .opening)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                closing = try container.decode(Time.self, forKey: .closing)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                open = try container.decode(Bool.self, forKey: .open)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(weekday, forKey: .weekday)
            
            
            
            try? container.encodeIfPresent(opening, forKey: .opening)
            
            
            
            try? container.encodeIfPresent(closing, forKey: .closing)
            
            
            
            try? container.encodeIfPresent(open, forKey: .open)
            
            
        }
        
    }
}
