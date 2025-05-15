

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: ProcessingSchedule
        Used By: Configuration
    */

    class ProcessingSchedule: Codable {
        
        
        public var isScheduled: Bool?
        
        public var startAfter: StartAfter?
        

        public enum CodingKeys: String, CodingKey {
            
            case isScheduled = "is_scheduled"
            
            case startAfter = "start_after"
            
        }

        public init(isScheduled: Bool? = nil, startAfter: StartAfter? = nil) {
            
            self.isScheduled = isScheduled
            
            self.startAfter = startAfter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isScheduled = try container.decode(Bool.self, forKey: .isScheduled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    startAfter = try container.decode(StartAfter.self, forKey: .startAfter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isScheduled, forKey: .isScheduled)
            
            
            
            
            try? container.encodeIfPresent(startAfter, forKey: .startAfter)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: ProcessingSchedule
        Used By: Configuration
    */

    class ProcessingSchedule: Codable {
        
        
        public var isScheduled: Bool?
        
        public var startAfter: StartAfter?
        

        public enum CodingKeys: String, CodingKey {
            
            case isScheduled = "is_scheduled"
            
            case startAfter = "start_after"
            
        }

        public init(isScheduled: Bool? = nil, startAfter: StartAfter? = nil) {
            
            self.isScheduled = isScheduled
            
            self.startAfter = startAfter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isScheduled = try container.decode(Bool.self, forKey: .isScheduled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    startAfter = try container.decode(StartAfter.self, forKey: .startAfter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isScheduled, forKey: .isScheduled)
            
            
            
            
            try? container.encodeIfPresent(startAfter, forKey: .startAfter)
            
            
        }
        
    }
}


