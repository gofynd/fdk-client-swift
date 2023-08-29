

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: DummyDatasourcesMeta
        Used By: Communication
    */

    class DummyDatasourcesMeta: Codable {
        
        
        public var id: Int?
        
        public var data: DummyDatasourcesMetaObj?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case data = "data"
            
        }

        public init(data: DummyDatasourcesMetaObj? = nil, id: Int? = nil) {
            
            self.id = id
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(DummyDatasourcesMetaObj.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: DummyDatasourcesMeta
        Used By: Communication
    */

    class DummyDatasourcesMeta: Codable {
        
        
        public var id: Int?
        
        public var data: DummyDatasourcesMetaObj?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case data = "data"
            
        }

        public init(data: DummyDatasourcesMetaObj? = nil, id: Int? = nil) {
            
            self.id = id
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(DummyDatasourcesMetaObj.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}


