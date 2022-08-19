

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails1
         Used By: Order
     */

    class ShipmentDetails1: Codable {
        public var deliveryAddressJson: DeliveryAddress

        public var storeInvoiceId: String?

        public var parentType: String?

        public var tags: [String]?

        public var fyndOrderId: String

        public var creditNoteId: String?

        public var isActive: Bool

        public var handOverContactJson: ShipmentHandOverCustomerContact

        public var createdAt: Int

        public var meta: ShipmentMeta

        public var billingAddressJson: BillingAddress1

        public var lockStatus: String

        public var affiliateShipmentId: String

        public var deliveryAwbNumber: String?

        public var ewayBillId: String?

        public var packagingType: String

        public var fulfilmentPriority: Int

        public var pdfLinks: PDFLinks

        public var affiliateId: String

        public var parentId: String?

        public var previousShipmentId: String?

        public var sdType: String

        public var sId: String

        public enum CodingKeys: String, CodingKey {
            case deliveryAddressJson = "delivery_address_json"

            case storeInvoiceId = "store_invoice_id"

            case parentType = "parent_type"

            case tags

            case fyndOrderId = "fynd_order_id"

            case creditNoteId = "credit_note_id"

            case isActive = "is_active"

            case handOverContactJson = "hand_over_contact_json"

            case createdAt = "created_at"

            case meta

            case billingAddressJson = "billing_address_json"

            case lockStatus = "lock_status"

            case affiliateShipmentId = "affiliate_shipment_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case ewayBillId = "eway_bill_id"

            case packagingType = "packaging_type"

            case fulfilmentPriority = "fulfilment_priority"

            case pdfLinks = "pdf_links"

            case affiliateId = "affiliate_id"

            case parentId = "parent_id"

            case previousShipmentId = "previous_shipment_id"

            case sdType = "sd_type"

            case sId = "s_id"
        }

        public init(affiliateId: String, affiliateShipmentId: String, billingAddressJson: BillingAddress1, createdAt: Int, creditNoteId: String? = nil, deliveryAddressJson: DeliveryAddress, deliveryAwbNumber: String? = nil, ewayBillId: String? = nil, fulfilmentPriority: Int, fyndOrderId: String, handOverContactJson: ShipmentHandOverCustomerContact, isActive: Bool, lockStatus: String, meta: ShipmentMeta, packagingType: String, parentId: String? = nil, parentType: String? = nil, pdfLinks: PDFLinks, previousShipmentId: String? = nil, sdType: String, storeInvoiceId: String? = nil, sId: String, tags: [String]? = nil) {
            self.deliveryAddressJson = deliveryAddressJson

            self.storeInvoiceId = storeInvoiceId

            self.parentType = parentType

            self.tags = tags

            self.fyndOrderId = fyndOrderId

            self.creditNoteId = creditNoteId

            self.isActive = isActive

            self.handOverContactJson = handOverContactJson

            self.createdAt = createdAt

            self.meta = meta

            self.billingAddressJson = billingAddressJson

            self.lockStatus = lockStatus

            self.affiliateShipmentId = affiliateShipmentId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.ewayBillId = ewayBillId

            self.packagingType = packagingType

            self.fulfilmentPriority = fulfilmentPriority

            self.pdfLinks = pdfLinks

            self.affiliateId = affiliateId

            self.parentId = parentId

            self.previousShipmentId = previousShipmentId

            self.sdType = sdType

            self.sId = sId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryAddressJson = try container.decode(DeliveryAddress.self, forKey: .deliveryAddressJson)

            do {
                storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentType = try container.decode(String.self, forKey: .parentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            handOverContactJson = try container.decode(ShipmentHandOverCustomerContact.self, forKey: .handOverContactJson)

            createdAt = try container.decode(Int.self, forKey: .createdAt)

            meta = try container.decode(ShipmentMeta.self, forKey: .meta)

            billingAddressJson = try container.decode(BillingAddress1.self, forKey: .billingAddressJson)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            packagingType = try container.decode(String.self, forKey: .packagingType)

            fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

            pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            do {
                parentId = try container.decode(String.self, forKey: .parentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sdType = try container.decode(String.self, forKey: .sdType)

            sId = try container.decode(String.self, forKey: .sId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryAddressJson, forKey: .deliveryAddressJson)

            try? container.encode(storeInvoiceId, forKey: .storeInvoiceId)

            try? container.encode(parentType, forKey: .parentType)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encode(creditNoteId, forKey: .creditNoteId)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(handOverContactJson, forKey: .handOverContactJson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(billingAddressJson, forKey: .billingAddressJson)

            try? container.encode(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encode(parentId, forKey: .parentId)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encodeIfPresent(sdType, forKey: .sdType)

            try? container.encodeIfPresent(sId, forKey: .sId)
        }
    }
}
