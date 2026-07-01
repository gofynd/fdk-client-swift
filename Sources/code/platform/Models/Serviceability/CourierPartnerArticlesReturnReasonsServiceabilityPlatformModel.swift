

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerArticlesReturnReasons
        Used By: Serviceability
    */

    class CourierPartnerArticlesReturnReasons: Codable {
        
        
        public var id: Int?
        
        public var meta: CourierPartnerArticlesReturnReasonsMeta?
        
        public var qcType: [String]?
        
        public var reasons: [String]?
        
        public var isActive: Bool?
        
        public var displayName: String?
        
        public var questionSet: [String]?
        
        public var reasonOtherText: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case meta = "meta"
            
            case qcType = "qc_type"
            
            case reasons = "reasons"
            
            case isActive = "is_active"
            
            case displayName = "display_name"
            
            case questionSet = "question_set"
            
            case reasonOtherText = "reason_other_text"
            
        }

        public init(displayName: String? = nil, id: Int? = nil, isActive: Bool? = nil, meta: CourierPartnerArticlesReturnReasonsMeta? = nil, qcType: [String]? = nil, questionSet: [String]? = nil, reasons: [String]? = nil, reasonOtherText: String? = nil) {
            
            self.id = id
            
            self.meta = meta
            
            self.qcType = qcType
            
            self.reasons = reasons
            
            self.isActive = isActive
            
            self.displayName = displayName
            
            self.questionSet = questionSet
            
            self.reasonOtherText = reasonOtherText
            
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
                    meta = try container.decode(CourierPartnerArticlesReturnReasonsMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qcType = try container.decode([String].self, forKey: .qcType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reasons = try container.decode([String].self, forKey: .reasons)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    questionSet = try container.decode([String].self, forKey: .questionSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reasonOtherText = try container.decode(String.self, forKey: .reasonOtherText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(qcType, forKey: .qcType)
            
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(questionSet, forKey: .questionSet)
            
            
            
            
            try? container.encodeIfPresent(reasonOtherText, forKey: .reasonOtherText)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerArticlesReturnReasons
        Used By: Serviceability
    */

    class CourierPartnerArticlesReturnReasons: Codable {
        
        
        public var id: Int?
        
        public var meta: CourierPartnerArticlesReturnReasonsMeta?
        
        public var qcType: [String]?
        
        public var reasons: [String]?
        
        public var isActive: Bool?
        
        public var displayName: String?
        
        public var questionSet: [String]?
        
        public var reasonOtherText: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case meta = "meta"
            
            case qcType = "qc_type"
            
            case reasons = "reasons"
            
            case isActive = "is_active"
            
            case displayName = "display_name"
            
            case questionSet = "question_set"
            
            case reasonOtherText = "reason_other_text"
            
        }

        public init(displayName: String? = nil, id: Int? = nil, isActive: Bool? = nil, meta: CourierPartnerArticlesReturnReasonsMeta? = nil, qcType: [String]? = nil, questionSet: [String]? = nil, reasons: [String]? = nil, reasonOtherText: String? = nil) {
            
            self.id = id
            
            self.meta = meta
            
            self.qcType = qcType
            
            self.reasons = reasons
            
            self.isActive = isActive
            
            self.displayName = displayName
            
            self.questionSet = questionSet
            
            self.reasonOtherText = reasonOtherText
            
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
                    meta = try container.decode(CourierPartnerArticlesReturnReasonsMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qcType = try container.decode([String].self, forKey: .qcType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reasons = try container.decode([String].self, forKey: .reasons)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    questionSet = try container.decode([String].self, forKey: .questionSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reasonOtherText = try container.decode(String.self, forKey: .reasonOtherText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(qcType, forKey: .qcType)
            
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(questionSet, forKey: .questionSet)
            
            
            
            
            try? container.encodeIfPresent(reasonOtherText, forKey: .reasonOtherText)
            
            
        }
        
    }
}


