

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Reason
        Used By: Order
    */

    class Reason: Codable {
        
        
        public var id: Int?
        
        public var displayName: String
        
        public var remarkRequired: Bool?
        
        public var showTextArea: Bool?
        
        public var reasons: [Reason]?
        
        public var qcType: [String]
        
        public var questionSet: [QuestionSet]
        
        public var meta: [String: Any]
        
        public var isActive: Bool
        
        public var isDeleted: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case displayName = "display_name"
            
            case remarkRequired = "remark_required"
            
            case showTextArea = "show_text_area"
            
            case reasons = "reasons"
            
            case qcType = "qc_type"
            
            case questionSet = "question_set"
            
            case meta = "meta"
            
            case isActive = "is_active"
            
            case isDeleted = "is_deleted"
            
        }

        public init(displayName: String, id: Int? = nil, isActive: Bool, isDeleted: Bool? = nil, meta: [String: Any], qcType: [String], questionSet: [QuestionSet], reasons: [Reason]? = nil, remarkRequired: Bool? = nil, showTextArea: Bool? = nil) {
            
            self.id = id
            
            self.displayName = displayName
            
            self.remarkRequired = remarkRequired
            
            self.showTextArea = showTextArea
            
            self.reasons = reasons
            
            self.qcType = qcType
            
            self.questionSet = questionSet
            
            self.meta = meta
            
            self.isActive = isActive
            
            self.isDeleted = isDeleted
            
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
                    remarkRequired = try container.decode(Bool.self, forKey: .remarkRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    showTextArea = try container.decode(Bool.self, forKey: .showTextArea)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
            
            
                do {
                    isDeleted = try container.decode(Bool.self, forKey: .isDeleted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(remarkRequired, forKey: .remarkRequired)
            
            
            
            
            try? container.encodeIfPresent(showTextArea, forKey: .showTextArea)
            
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(qcType, forKey: .qcType)
            
            
            
            
            try? container.encodeIfPresent(questionSet, forKey: .questionSet)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
            
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
        
        public var remarkRequired: Bool?
        
        public var showTextArea: Bool?
        
        public var reasons: [Reason]?
        
        public var qcType: [String]
        
        public var questionSet: [QuestionSet]
        
        public var meta: [String: Any]
        
        public var isActive: Bool
        
        public var isDeleted: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case displayName = "display_name"
            
            case remarkRequired = "remark_required"
            
            case showTextArea = "show_text_area"
            
            case reasons = "reasons"
            
            case qcType = "qc_type"
            
            case questionSet = "question_set"
            
            case meta = "meta"
            
            case isActive = "is_active"
            
            case isDeleted = "is_deleted"
            
        }

        public init(displayName: String, id: Int? = nil, isActive: Bool, isDeleted: Bool? = nil, meta: [String: Any], qcType: [String], questionSet: [QuestionSet], reasons: [Reason]? = nil, remarkRequired: Bool? = nil, showTextArea: Bool? = nil) {
            
            self.id = id
            
            self.displayName = displayName
            
            self.remarkRequired = remarkRequired
            
            self.showTextArea = showTextArea
            
            self.reasons = reasons
            
            self.qcType = qcType
            
            self.questionSet = questionSet
            
            self.meta = meta
            
            self.isActive = isActive
            
            self.isDeleted = isDeleted
            
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
                    remarkRequired = try container.decode(Bool.self, forKey: .remarkRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    showTextArea = try container.decode(Bool.self, forKey: .showTextArea)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
            
            
                do {
                    isDeleted = try container.decode(Bool.self, forKey: .isDeleted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(remarkRequired, forKey: .remarkRequired)
            
            
            
            
            try? container.encodeIfPresent(showTextArea, forKey: .showTextArea)
            
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(qcType, forKey: .qcType)
            
            
            
            
            try? container.encodeIfPresent(questionSet, forKey: .questionSet)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
            
        }
        
    }
}


