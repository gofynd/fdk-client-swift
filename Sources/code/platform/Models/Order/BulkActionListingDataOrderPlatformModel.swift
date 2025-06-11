

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BulkActionListingData
        Used By: Order
    */

    class BulkActionListingData: Codable {
        
        
        public var storeId: Int?
        
        public var uploadedOn: String?
        
        public var companyId: Int?
        
        public var shipmentsActionInfo: ShipmentActionInfo?
        
        public var isInvoiceable: Bool?
        
        public var userName: String?
        
        public var fileUrl: String?
        
        public var meta: [String: Any]?
        
        public var invoiceDocumentType: String?
        
        public var labelDocumentType: String?
        
        public var fileName: String?
        
        public var storeName: String?
        
        public var updatedTs: Int?
        
        public var status: String?
        
        public var storeCode: String?
        
        public var bulkActionType: String?
        
        public var createdTs: String?
        
        public var invoiceStatus: String?
        
        public var doInvoiceLabelGenerated: Bool?
        
        public var id: Int?
        
        public var userId: String?
        
        public var lastSelectedInvoiceLabelType: String?
        
        public var batchId: String?
        
        public var uploadedBy: String?
        
        public var totalShipmentsCount: Int?
        
        public var invoicelabelDocumentType: String?
        
        public var failedShCount: Int?
        
        public var successfulShCount: Int?
        
        public var totalCount: Int?
        
        public var failedShipments: [String]?
        
        public var successfulInvoicedCount: Int?
        
        public var failedInvoicedCount: Int?
        
        public var totalInvoicedCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeId = "store_id"
            
            case uploadedOn = "uploaded_on"
            
            case companyId = "company_id"
            
            case shipmentsActionInfo = "shipments_action_info"
            
            case isInvoiceable = "is_invoiceable"
            
            case userName = "user_name"
            
            case fileUrl = "file_url"
            
            case meta = "meta"
            
            case invoiceDocumentType = "invoice_document_type"
            
            case labelDocumentType = "label_document_type"
            
            case fileName = "file_name"
            
            case storeName = "store_name"
            
            case updatedTs = "updated_ts"
            
            case status = "status"
            
            case storeCode = "store_code"
            
            case bulkActionType = "bulk_action_type"
            
            case createdTs = "created_ts"
            
            case invoiceStatus = "invoice_status"
            
            case doInvoiceLabelGenerated = "do_invoice_label_generated"
            
            case id = "id"
            
            case userId = "user_id"
            
            case lastSelectedInvoiceLabelType = "last_selected_invoice_label_type"
            
            case batchId = "batch_id"
            
            case uploadedBy = "uploaded_by"
            
            case totalShipmentsCount = "total_shipments_count"
            
            case invoicelabelDocumentType = "invoicelabel_document_type"
            
            case failedShCount = "failed_sh_count"
            
            case successfulShCount = "successful_sh_count"
            
            case totalCount = "total_count"
            
            case failedShipments = "failed_shipments"
            
            case successfulInvoicedCount = "successful_invoiced_count"
            
            case failedInvoicedCount = "failed_invoiced_count"
            
            case totalInvoicedCount = "total_invoiced_count"
            
        }

        public init(batchId: String? = nil, bulkActionType: String? = nil, companyId: Int? = nil, createdTs: String? = nil, doInvoiceLabelGenerated: Bool? = nil, failedInvoicedCount: Int? = nil, failedShipments: [String]? = nil, failedShCount: Int? = nil, fileName: String? = nil, fileUrl: String? = nil, id: Int? = nil, invoicelabelDocumentType: String? = nil, invoiceDocumentType: String? = nil, invoiceStatus: String? = nil, isInvoiceable: Bool? = nil, labelDocumentType: String? = nil, lastSelectedInvoiceLabelType: String? = nil, meta: [String: Any]? = nil, shipmentsActionInfo: ShipmentActionInfo? = nil, status: String? = nil, storeCode: String? = nil, storeId: Int? = nil, storeName: String? = nil, successfulInvoicedCount: Int? = nil, successfulShCount: Int? = nil, totalCount: Int? = nil, totalInvoicedCount: Int? = nil, totalShipmentsCount: Int? = nil, updatedTs: Int? = nil, uploadedBy: String? = nil, uploadedOn: String? = nil, userId: String? = nil, userName: String? = nil) {
            
            self.storeId = storeId
            
            self.uploadedOn = uploadedOn
            
            self.companyId = companyId
            
            self.shipmentsActionInfo = shipmentsActionInfo
            
            self.isInvoiceable = isInvoiceable
            
            self.userName = userName
            
            self.fileUrl = fileUrl
            
            self.meta = meta
            
            self.invoiceDocumentType = invoiceDocumentType
            
            self.labelDocumentType = labelDocumentType
            
            self.fileName = fileName
            
            self.storeName = storeName
            
            self.updatedTs = updatedTs
            
            self.status = status
            
            self.storeCode = storeCode
            
            self.bulkActionType = bulkActionType
            
            self.createdTs = createdTs
            
            self.invoiceStatus = invoiceStatus
            
            self.doInvoiceLabelGenerated = doInvoiceLabelGenerated
            
            self.id = id
            
            self.userId = userId
            
            self.lastSelectedInvoiceLabelType = lastSelectedInvoiceLabelType
            
            self.batchId = batchId
            
            self.uploadedBy = uploadedBy
            
            self.totalShipmentsCount = totalShipmentsCount
            
            self.invoicelabelDocumentType = invoicelabelDocumentType
            
            self.failedShCount = failedShCount
            
            self.successfulShCount = successfulShCount
            
            self.totalCount = totalCount
            
            self.failedShipments = failedShipments
            
            self.successfulInvoicedCount = successfulInvoicedCount
            
            self.failedInvoicedCount = failedInvoicedCount
            
            self.totalInvoicedCount = totalInvoicedCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeId = try container.decode(Int.self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uploadedOn = try container.decode(String.self, forKey: .uploadedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentsActionInfo = try container.decode(ShipmentActionInfo.self, forKey: .shipmentsActionInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isInvoiceable = try container.decode(Bool.self, forKey: .isInvoiceable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userName = try container.decode(String.self, forKey: .userName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceDocumentType = try container.decode(String.self, forKey: .invoiceDocumentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    labelDocumentType = try container.decode(String.self, forKey: .labelDocumentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fileName = try container.decode(String.self, forKey: .fileName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeName = try container.decode(String.self, forKey: .storeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedTs = try container.decode(Int.self, forKey: .updatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bulkActionType = try container.decode(String.self, forKey: .bulkActionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdTs = try container.decode(String.self, forKey: .createdTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceStatus = try container.decode(String.self, forKey: .invoiceStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    doInvoiceLabelGenerated = try container.decode(Bool.self, forKey: .doInvoiceLabelGenerated)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastSelectedInvoiceLabelType = try container.decode(String.self, forKey: .lastSelectedInvoiceLabelType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    batchId = try container.decode(String.self, forKey: .batchId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uploadedBy = try container.decode(String.self, forKey: .uploadedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalShipmentsCount = try container.decode(Int.self, forKey: .totalShipmentsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoicelabelDocumentType = try container.decode(String.self, forKey: .invoicelabelDocumentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedShCount = try container.decode(Int.self, forKey: .failedShCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successfulShCount = try container.decode(Int.self, forKey: .successfulShCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalCount = try container.decode(Int.self, forKey: .totalCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedShipments = try container.decode([String].self, forKey: .failedShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successfulInvoicedCount = try container.decode(Int.self, forKey: .successfulInvoicedCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedInvoicedCount = try container.decode(Int.self, forKey: .failedInvoicedCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalInvoicedCount = try container.decode(Int.self, forKey: .totalInvoicedCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(uploadedOn, forKey: .uploadedOn)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(shipmentsActionInfo, forKey: .shipmentsActionInfo)
            
            
            
            
            try? container.encodeIfPresent(isInvoiceable, forKey: .isInvoiceable)
            
            
            
            
            try? container.encodeIfPresent(userName, forKey: .userName)
            
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(invoiceDocumentType, forKey: .invoiceDocumentType)
            
            
            
            
            try? container.encodeIfPresent(labelDocumentType, forKey: .labelDocumentType)
            
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
            
            
            try? container.encodeIfPresent(storeName, forKey: .storeName)
            
            
            
            
            try? container.encodeIfPresent(updatedTs, forKey: .updatedTs)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(bulkActionType, forKey: .bulkActionType)
            
            
            
            
            try? container.encodeIfPresent(createdTs, forKey: .createdTs)
            
            
            
            
            try? container.encodeIfPresent(invoiceStatus, forKey: .invoiceStatus)
            
            
            
            
            try? container.encodeIfPresent(doInvoiceLabelGenerated, forKey: .doInvoiceLabelGenerated)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(lastSelectedInvoiceLabelType, forKey: .lastSelectedInvoiceLabelType)
            
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(uploadedBy, forKey: .uploadedBy)
            
            
            
            
            try? container.encodeIfPresent(totalShipmentsCount, forKey: .totalShipmentsCount)
            
            
            
            
            try? container.encodeIfPresent(invoicelabelDocumentType, forKey: .invoicelabelDocumentType)
            
            
            
            
            try? container.encodeIfPresent(failedShCount, forKey: .failedShCount)
            
            
            
            
            try? container.encodeIfPresent(successfulShCount, forKey: .successfulShCount)
            
            
            
            
            try? container.encodeIfPresent(totalCount, forKey: .totalCount)
            
            
            
            
            try? container.encodeIfPresent(failedShipments, forKey: .failedShipments)
            
            
            
            
            try? container.encodeIfPresent(successfulInvoicedCount, forKey: .successfulInvoicedCount)
            
            
            
            
            try? container.encodeIfPresent(failedInvoicedCount, forKey: .failedInvoicedCount)
            
            
            
            
            try? container.encodeIfPresent(totalInvoicedCount, forKey: .totalInvoicedCount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BulkActionListingData
        Used By: Order
    */

    class BulkActionListingData: Codable {
        
        
        public var storeId: Int?
        
        public var uploadedOn: String?
        
        public var companyId: Int?
        
        public var shipmentsActionInfo: ShipmentActionInfo?
        
        public var isInvoiceable: Bool?
        
        public var userName: String?
        
        public var fileUrl: String?
        
        public var meta: [String: Any]?
        
        public var invoiceDocumentType: String?
        
        public var labelDocumentType: String?
        
        public var fileName: String?
        
        public var storeName: String?
        
        public var updatedTs: Int?
        
        public var status: String?
        
        public var storeCode: String?
        
        public var bulkActionType: String?
        
        public var createdTs: String?
        
        public var invoiceStatus: String?
        
        public var doInvoiceLabelGenerated: Bool?
        
        public var id: Int?
        
        public var userId: String?
        
        public var lastSelectedInvoiceLabelType: String?
        
        public var batchId: String?
        
        public var uploadedBy: String?
        
        public var totalShipmentsCount: Int?
        
        public var invoicelabelDocumentType: String?
        
        public var failedShCount: Int?
        
        public var successfulShCount: Int?
        
        public var totalCount: Int?
        
        public var failedShipments: [String]?
        
        public var successfulInvoicedCount: Int?
        
        public var failedInvoicedCount: Int?
        
        public var totalInvoicedCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeId = "store_id"
            
            case uploadedOn = "uploaded_on"
            
            case companyId = "company_id"
            
            case shipmentsActionInfo = "shipments_action_info"
            
            case isInvoiceable = "is_invoiceable"
            
            case userName = "user_name"
            
            case fileUrl = "file_url"
            
            case meta = "meta"
            
            case invoiceDocumentType = "invoice_document_type"
            
            case labelDocumentType = "label_document_type"
            
            case fileName = "file_name"
            
            case storeName = "store_name"
            
            case updatedTs = "updated_ts"
            
            case status = "status"
            
            case storeCode = "store_code"
            
            case bulkActionType = "bulk_action_type"
            
            case createdTs = "created_ts"
            
            case invoiceStatus = "invoice_status"
            
            case doInvoiceLabelGenerated = "do_invoice_label_generated"
            
            case id = "id"
            
            case userId = "user_id"
            
            case lastSelectedInvoiceLabelType = "last_selected_invoice_label_type"
            
            case batchId = "batch_id"
            
            case uploadedBy = "uploaded_by"
            
            case totalShipmentsCount = "total_shipments_count"
            
            case invoicelabelDocumentType = "invoicelabel_document_type"
            
            case failedShCount = "failed_sh_count"
            
            case successfulShCount = "successful_sh_count"
            
            case totalCount = "total_count"
            
            case failedShipments = "failed_shipments"
            
            case successfulInvoicedCount = "successful_invoiced_count"
            
            case failedInvoicedCount = "failed_invoiced_count"
            
            case totalInvoicedCount = "total_invoiced_count"
            
        }

        public init(batchId: String? = nil, bulkActionType: String? = nil, companyId: Int? = nil, createdTs: String? = nil, doInvoiceLabelGenerated: Bool? = nil, failedInvoicedCount: Int? = nil, failedShipments: [String]? = nil, failedShCount: Int? = nil, fileName: String? = nil, fileUrl: String? = nil, id: Int? = nil, invoicelabelDocumentType: String? = nil, invoiceDocumentType: String? = nil, invoiceStatus: String? = nil, isInvoiceable: Bool? = nil, labelDocumentType: String? = nil, lastSelectedInvoiceLabelType: String? = nil, meta: [String: Any]? = nil, shipmentsActionInfo: ShipmentActionInfo? = nil, status: String? = nil, storeCode: String? = nil, storeId: Int? = nil, storeName: String? = nil, successfulInvoicedCount: Int? = nil, successfulShCount: Int? = nil, totalCount: Int? = nil, totalInvoicedCount: Int? = nil, totalShipmentsCount: Int? = nil, updatedTs: Int? = nil, uploadedBy: String? = nil, uploadedOn: String? = nil, userId: String? = nil, userName: String? = nil) {
            
            self.storeId = storeId
            
            self.uploadedOn = uploadedOn
            
            self.companyId = companyId
            
            self.shipmentsActionInfo = shipmentsActionInfo
            
            self.isInvoiceable = isInvoiceable
            
            self.userName = userName
            
            self.fileUrl = fileUrl
            
            self.meta = meta
            
            self.invoiceDocumentType = invoiceDocumentType
            
            self.labelDocumentType = labelDocumentType
            
            self.fileName = fileName
            
            self.storeName = storeName
            
            self.updatedTs = updatedTs
            
            self.status = status
            
            self.storeCode = storeCode
            
            self.bulkActionType = bulkActionType
            
            self.createdTs = createdTs
            
            self.invoiceStatus = invoiceStatus
            
            self.doInvoiceLabelGenerated = doInvoiceLabelGenerated
            
            self.id = id
            
            self.userId = userId
            
            self.lastSelectedInvoiceLabelType = lastSelectedInvoiceLabelType
            
            self.batchId = batchId
            
            self.uploadedBy = uploadedBy
            
            self.totalShipmentsCount = totalShipmentsCount
            
            self.invoicelabelDocumentType = invoicelabelDocumentType
            
            self.failedShCount = failedShCount
            
            self.successfulShCount = successfulShCount
            
            self.totalCount = totalCount
            
            self.failedShipments = failedShipments
            
            self.successfulInvoicedCount = successfulInvoicedCount
            
            self.failedInvoicedCount = failedInvoicedCount
            
            self.totalInvoicedCount = totalInvoicedCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeId = try container.decode(Int.self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uploadedOn = try container.decode(String.self, forKey: .uploadedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentsActionInfo = try container.decode(ShipmentActionInfo.self, forKey: .shipmentsActionInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isInvoiceable = try container.decode(Bool.self, forKey: .isInvoiceable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userName = try container.decode(String.self, forKey: .userName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceDocumentType = try container.decode(String.self, forKey: .invoiceDocumentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    labelDocumentType = try container.decode(String.self, forKey: .labelDocumentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fileName = try container.decode(String.self, forKey: .fileName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeName = try container.decode(String.self, forKey: .storeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedTs = try container.decode(Int.self, forKey: .updatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bulkActionType = try container.decode(String.self, forKey: .bulkActionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdTs = try container.decode(String.self, forKey: .createdTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceStatus = try container.decode(String.self, forKey: .invoiceStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    doInvoiceLabelGenerated = try container.decode(Bool.self, forKey: .doInvoiceLabelGenerated)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastSelectedInvoiceLabelType = try container.decode(String.self, forKey: .lastSelectedInvoiceLabelType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    batchId = try container.decode(String.self, forKey: .batchId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uploadedBy = try container.decode(String.self, forKey: .uploadedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalShipmentsCount = try container.decode(Int.self, forKey: .totalShipmentsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoicelabelDocumentType = try container.decode(String.self, forKey: .invoicelabelDocumentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedShCount = try container.decode(Int.self, forKey: .failedShCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successfulShCount = try container.decode(Int.self, forKey: .successfulShCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalCount = try container.decode(Int.self, forKey: .totalCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedShipments = try container.decode([String].self, forKey: .failedShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successfulInvoicedCount = try container.decode(Int.self, forKey: .successfulInvoicedCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedInvoicedCount = try container.decode(Int.self, forKey: .failedInvoicedCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalInvoicedCount = try container.decode(Int.self, forKey: .totalInvoicedCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(uploadedOn, forKey: .uploadedOn)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(shipmentsActionInfo, forKey: .shipmentsActionInfo)
            
            
            
            
            try? container.encodeIfPresent(isInvoiceable, forKey: .isInvoiceable)
            
            
            
            
            try? container.encodeIfPresent(userName, forKey: .userName)
            
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(invoiceDocumentType, forKey: .invoiceDocumentType)
            
            
            
            
            try? container.encodeIfPresent(labelDocumentType, forKey: .labelDocumentType)
            
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
            
            
            try? container.encodeIfPresent(storeName, forKey: .storeName)
            
            
            
            
            try? container.encodeIfPresent(updatedTs, forKey: .updatedTs)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(bulkActionType, forKey: .bulkActionType)
            
            
            
            
            try? container.encodeIfPresent(createdTs, forKey: .createdTs)
            
            
            
            
            try? container.encodeIfPresent(invoiceStatus, forKey: .invoiceStatus)
            
            
            
            
            try? container.encodeIfPresent(doInvoiceLabelGenerated, forKey: .doInvoiceLabelGenerated)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(lastSelectedInvoiceLabelType, forKey: .lastSelectedInvoiceLabelType)
            
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(uploadedBy, forKey: .uploadedBy)
            
            
            
            
            try? container.encodeIfPresent(totalShipmentsCount, forKey: .totalShipmentsCount)
            
            
            
            
            try? container.encodeIfPresent(invoicelabelDocumentType, forKey: .invoicelabelDocumentType)
            
            
            
            
            try? container.encodeIfPresent(failedShCount, forKey: .failedShCount)
            
            
            
            
            try? container.encodeIfPresent(successfulShCount, forKey: .successfulShCount)
            
            
            
            
            try? container.encodeIfPresent(totalCount, forKey: .totalCount)
            
            
            
            
            try? container.encodeIfPresent(failedShipments, forKey: .failedShipments)
            
            
            
            
            try? container.encodeIfPresent(successfulInvoicedCount, forKey: .successfulInvoicedCount)
            
            
            
            
            try? container.encodeIfPresent(failedInvoicedCount, forKey: .failedInvoicedCount)
            
            
            
            
            try? container.encodeIfPresent(totalInvoicedCount, forKey: .totalInvoicedCount)
            
            
        }
        
    }
}


