

import Foundation


public extension PlatformClient.Order {
    /*
        Model: TrackingList
        Used By: Order
    */

    class TrackingList: Codable {
        
        
        public var isPassed: Bool?
        
        public var text: String
        
        public var isCurrent: Bool?
        
        public var time: String?
        
        public var status: String
        

        public enum CodingKeys: String, CodingKey {
            
            case isPassed = "is_passed"
            
            case text = "text"
            
            case isCurrent = "is_current"
            
            case time = "time"
            
            case status = "status"
            
        }

        public init(isCurrent: Bool? = nil, isPassed: Bool? = nil, status: String, text: String, time: String? = nil) {
            
            self.isPassed = isPassed
            
            self.text = text
            
            self.isCurrent = isCurrent
            
            self.time = time
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isPassed = try container.decode(Bool.self, forKey: .isPassed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                text = try container.decode(String.self, forKey: .text)
                
            
            
            
                do {
                    isCurrent = try container.decode(Bool.self, forKey: .isCurrent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    time = try container.decode(String.self, forKey: .time)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isPassed, forKey: .isPassed)
            
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(isCurrent, forKey: .isCurrent)
            
            
            
            
            try? container.encodeIfPresent(time, forKey: .time)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: TrackingList
        Used By: Order
    */

    class TrackingList: Codable {
        
        
        public var isPassed: Bool?
        
        public var text: String
        
        public var isCurrent: Bool?
        
        public var time: String?
        
        public var status: String
        

        public enum CodingKeys: String, CodingKey {
            
            case isPassed = "is_passed"
            
            case text = "text"
            
            case isCurrent = "is_current"
            
            case time = "time"
            
            case status = "status"
            
        }

        public init(isCurrent: Bool? = nil, isPassed: Bool? = nil, status: String, text: String, time: String? = nil) {
            
            self.isPassed = isPassed
            
            self.text = text
            
            self.isCurrent = isCurrent
            
            self.time = time
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isPassed = try container.decode(Bool.self, forKey: .isPassed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                text = try container.decode(String.self, forKey: .text)
                
            
            
            
                do {
                    isCurrent = try container.decode(Bool.self, forKey: .isCurrent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    time = try container.decode(String.self, forKey: .time)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isPassed, forKey: .isPassed)
            
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(isCurrent, forKey: .isCurrent)
            
            
            
            
            try? container.encodeIfPresent(time, forKey: .time)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}


