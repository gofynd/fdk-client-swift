

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Reason
        Used By: Order
    */

    class Reason: Codable {
        
        
        public var id: Int?
        
        public var displayName: String
        
        public var reasons: [Reason]?
        
        public var qcType: [String]
        
        public var questionSet: [QuestionSet]
        
        public var meta: [String: Any]
        
        public var isActive: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case displayName = "display_name"
            
            case reasons = "reasons"
            
            case qcType = "qc_type"
            
            case questionSet = "question_set"
            
            case meta = "meta"
            
            case isActive = "is_active"
            
        }

        public init(displayName: String, id: Int? = nil, isActive: Bool, meta: [String: Any], qcType: [String], questionSet: [QuestionSet], reasons: [Reason]? = nil) {
            
            self.id = id
            
            self.displayName = displayName
            
            self.reasons = reasons
            
            self.qcType = qcType
            
            self.questionSet = questionSet
            
            self.meta = meta
            
            self.isActive = isActive
            
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
                
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                do {
                    reasons = try container.decode([Reason].self, forKey: .reasons)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                qcType = try container.decode([String].self, forKey: .qcType)
                
            
            
            
                questionSet = try container.decode([QuestionSet].self, forKey: .questionSet)
                
            
            
            
                meta = try container.decode([String: Any].self, forKey: .meta)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(qcType, forKey: .qcType)
            
            
            
            
            try? container.encodeIfPresent(questionSet, forKey: .questionSet)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Reason
        Used By: Order
    */

    class Reason: Codable {
        
        
        public var id: Int?
        
        public var displayName: String
        
        public var reasons: [Reason]?
        
        public var qcType: [String]
        
        public var questionSet: [QuestionSet]
        
        public var meta: [String: Any]
        
        public var isActive: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case displayName = "display_name"
            
            case reasons = "reasons"
            
            case qcType = "qc_type"
            
            case questionSet = "question_set"
            
            case meta = "meta"
            
            case isActive = "is_active"
            
        }

        public init(displayName: String, id: Int? = nil, isActive: Bool, meta: [String: Any], qcType: [String], questionSet: [QuestionSet], reasons: [Reason]? = nil) {
            
            self.id = id
            
            self.displayName = displayName
            
            self.reasons = reasons
            
            self.qcType = qcType
            
            self.questionSet = questionSet
            
            self.meta = meta
            
            self.isActive = isActive
            
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
                
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                do {
                    reasons = try container.decode([Reason].self, forKey: .reasons)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                qcType = try container.decode([String].self, forKey: .qcType)
                
            
            
            
                questionSet = try container.decode([QuestionSet].self, forKey: .questionSet)
                
            
            
            
                meta = try container.decode([String: Any].self, forKey: .meta)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(qcType, forKey: .qcType)
            
            
            
            
            try? container.encodeIfPresent(questionSet, forKey: .questionSet)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}


