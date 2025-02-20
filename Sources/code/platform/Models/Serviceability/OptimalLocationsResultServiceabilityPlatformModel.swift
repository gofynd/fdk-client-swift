

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: OptimalLocationsResult
        Used By: Serviceability
    */

    class OptimalLocationsResult: Codable {
        
        
        public var assignedStores: [OptimalLocationAssignedStoresResult]
        
        public var faultyArticles: [ErrorResult]?
        

        public enum CodingKeys: String, CodingKey {
            
            case assignedStores = "assigned_stores"
            
            case faultyArticles = "faulty_articles"
            
        }

        public init(assignedStores: [OptimalLocationAssignedStoresResult], faultyArticles: [ErrorResult]? = nil) {
            
            self.assignedStores = assignedStores
            
            self.faultyArticles = faultyArticles
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                assignedStores = try container.decode([OptimalLocationAssignedStoresResult].self, forKey: .assignedStores)
                
            
            
            
                do {
                    faultyArticles = try container.decode([ErrorResult].self, forKey: .faultyArticles)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)
            
            
            
            
            try? container.encodeIfPresent(faultyArticles, forKey: .faultyArticles)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: OptimalLocationsResult
        Used By: Serviceability
    */

    class OptimalLocationsResult: Codable {
        
        
        public var assignedStores: [OptimalLocationAssignedStoresResult]
        
        public var faultyArticles: [ErrorResult]?
        

        public enum CodingKeys: String, CodingKey {
            
            case assignedStores = "assigned_stores"
            
            case faultyArticles = "faulty_articles"
            
        }

        public init(assignedStores: [OptimalLocationAssignedStoresResult], faultyArticles: [ErrorResult]? = nil) {
            
            self.assignedStores = assignedStores
            
            self.faultyArticles = faultyArticles
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                assignedStores = try container.decode([OptimalLocationAssignedStoresResult].self, forKey: .assignedStores)
                
            
            
            
                do {
                    faultyArticles = try container.decode([ErrorResult].self, forKey: .faultyArticles)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)
            
            
            
            
            try? container.encodeIfPresent(faultyArticles, forKey: .faultyArticles)
            
            
        }
        
    }
}


