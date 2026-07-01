

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: StartAfter
        Used By: Configuration
    */

    class StartAfter: Codable {
        
        
        public var days: Int?
        
        public var hours: Int?
        
        public var minutes: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case days = "days"
            
            case hours = "hours"
            
            case minutes = "minutes"
            
        }

        public init(days: Int? = nil, hours: Int? = nil, minutes: Int? = nil) {
            
            self.days = days
            
            self.hours = hours
            
            self.minutes = minutes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    days = try container.decode(Int.self, forKey: .days)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hours = try container.decode(Int.self, forKey: .hours)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minutes = try container.decode(Int.self, forKey: .minutes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(days, forKey: .days)
            
            
            
            
            try? container.encodeIfPresent(hours, forKey: .hours)
            
            
            
            
            try? container.encodeIfPresent(minutes, forKey: .minutes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: StartAfter
        Used By: Configuration
    */

    class StartAfter: Codable {
        
        
        public var days: Int?
        
        public var hours: Int?
        
        public var minutes: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case days = "days"
            
            case hours = "hours"
            
            case minutes = "minutes"
            
        }

        public init(days: Int? = nil, hours: Int? = nil, minutes: Int? = nil) {
            
            self.days = days
            
            self.hours = hours
            
            self.minutes = minutes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    days = try container.decode(Int.self, forKey: .days)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hours = try container.decode(Int.self, forKey: .hours)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minutes = try container.decode(Int.self, forKey: .minutes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(days, forKey: .days)
            
            
            
            
            try? container.encodeIfPresent(hours, forKey: .hours)
            
            
            
            
            try? container.encodeIfPresent(minutes, forKey: .minutes)
            
            
        }
        
    }
}


