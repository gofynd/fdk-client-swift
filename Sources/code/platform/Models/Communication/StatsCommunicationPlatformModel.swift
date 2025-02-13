

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: Stats
        Used By: Communication
    */

    class Stats: Codable {
        
        
        public var id: String?
        
        public var imported: StatsImported?
        
        public var processed: StatsProcessed?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case imported = "imported"
            
            case processed = "processed"
            
        }

        public init(imported: StatsImported? = nil, processed: StatsProcessed? = nil, id: String? = nil) {
            
            self.id = id
            
            self.imported = imported
            
            self.processed = processed
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    imported = try container.decode(StatsImported.self, forKey: .imported)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processed = try container.decode(StatsProcessed.self, forKey: .processed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(imported, forKey: .imported)
            
            
            
            
            try? container.encodeIfPresent(processed, forKey: .processed)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: Stats
        Used By: Communication
    */

    class Stats: Codable {
        
        
        public var id: String?
        
        public var imported: StatsImported?
        
        public var processed: StatsProcessed?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case imported = "imported"
            
            case processed = "processed"
            
        }

        public init(imported: StatsImported? = nil, processed: StatsProcessed? = nil, id: String? = nil) {
            
            self.id = id
            
            self.imported = imported
            
            self.processed = processed
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    imported = try container.decode(StatsImported.self, forKey: .imported)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processed = try container.decode(StatsProcessed.self, forKey: .processed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(imported, forKey: .imported)
            
            
            
            
            try? container.encodeIfPresent(processed, forKey: .processed)
            
            
        }
        
    }
}


