

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: AppOrderConfig
        Used By: Configuration
    */

    class AppOrderConfig: Codable {
        
        
        public var enabled: Bool?
        
        public var forceReassignment: Bool?
        
        public var message: String?
        
        public var processingSchedule: ProcessingSchedule?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case forceReassignment = "force_reassignment"
            
            case message = "message"
            
            case processingSchedule = "processing_schedule"
            
        }

        public init(enabled: Bool? = nil, forceReassignment: Bool? = nil, message: String? = nil, processingSchedule: ProcessingSchedule? = nil) {
            
            self.enabled = enabled
            
            self.forceReassignment = forceReassignment
            
            self.message = message
            
            self.processingSchedule = processingSchedule
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    forceReassignment = try container.decode(Bool.self, forKey: .forceReassignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processingSchedule = try container.decode(ProcessingSchedule.self, forKey: .processingSchedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(forceReassignment, forKey: .forceReassignment)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(processingSchedule, forKey: .processingSchedule)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: AppOrderConfig
        Used By: Configuration
    */

    class AppOrderConfig: Codable {
        
        
        public var enabled: Bool?
        
        public var forceReassignment: Bool?
        
        public var message: String?
        
        public var processingSchedule: ProcessingSchedule?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case forceReassignment = "force_reassignment"
            
            case message = "message"
            
            case processingSchedule = "processing_schedule"
            
        }

        public init(enabled: Bool? = nil, forceReassignment: Bool? = nil, message: String? = nil, processingSchedule: ProcessingSchedule? = nil) {
            
            self.enabled = enabled
            
            self.forceReassignment = forceReassignment
            
            self.message = message
            
            self.processingSchedule = processingSchedule
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    forceReassignment = try container.decode(Bool.self, forKey: .forceReassignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processingSchedule = try container.decode(ProcessingSchedule.self, forKey: .processingSchedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(forceReassignment, forKey: .forceReassignment)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(processingSchedule, forKey: .processingSchedule)
            
            
        }
        
    }
}


