

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails1
         Used By: Order
     */

    class ShipmentDetails1: Codable {
        public var lockStatus: String

        public var billingAddressJson: BillingAddress1

        public var affiliateId: String

        public var creditNoteId: String?

        public var handOverContactJson: ShipmentHandOverCustomerContact

        public var fulfilmentPriority: Int

        public var parentId: String?

        public var tags: [String]?

        public var ewayBillId: String?

        public var sId: String

        public var isActive: Bool

        public var deliveryAwbNumber: String?

        public var fyndOrderId: String

        public var storeInvoiceId: String?

        public var affiliateShipmentId: String

        public var packagingType: String

        public var pdfLinks: PDFLinks

        public var previousShipmentId: String?

        public var meta: ShipmentMeta

        public var deliveryAddressJson: DeliveryAddress

        public var sdType: String

        public var createdAt: Int

        public var parentType: String?

        public enum CodingKeys: String, CodingKey {
            case lockStatus = "lock_status"

            case billingAddressJson = "billing_address_json"

            case affiliateId = "affiliate_id"

            case creditNoteId = "credit_note_id"

            case handOverContactJson = "hand_over_contact_json"

            case fulfilmentPriority = "fulfilment_priority"

            case parentId = "parent_id"

            case tags

            case ewayBillId = "eway_bill_id"

            case sId = "s_id"

            case isActive = "is_active"

            case deliveryAwbNumber = "delivery_awb_number"

            case fyndOrderId = "fynd_order_id"

            case storeInvoiceId = "store_invoice_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case packagingType = "packaging_type"

            case pdfLinks = "pdf_links"

            case previousShipmentId = "previous_shipment_id"

            case meta

            case deliveryAddressJson = "delivery_address_json"

            case sdType = "sd_type"

            case createdAt = "created_at"

            case parentType = "parent_type"
        }

        public init(affiliateId: String, affiliateShipmentId: String, billingAddressJson: BillingAddress1, createdAt: Int, creditNoteId: String? = nil, deliveryAddressJson: DeliveryAddress, deliveryAwbNumber: String? = nil, ewayBillId: String? = nil, fulfilmentPriority: Int, fyndOrderId: String, handOverContactJson: ShipmentHandOverCustomerContact, isActive: Bool, lockStatus: String, meta: ShipmentMeta, packagingType: String, parentId: String? = nil, parentType: String? = nil, pdfLinks: PDFLinks, previousShipmentId: String? = nil, sdType: String, storeInvoiceId: String? = nil, sId: String, tags: [String]? = nil) {
            self.lockStatus = lockStatus

            self.billingAddressJson = billingAddressJson

            self.affiliateId = affiliateId

            self.creditNoteId = creditNoteId

            self.handOverContactJson = handOverContactJson

            self.fulfilmentPriority = fulfilmentPriority

            self.parentId = parentId

            self.tags = tags

            self.ewayBillId = ewayBillId

            self.sId = sId

            self.isActive = isActive

            self.deliveryAwbNumber = deliveryAwbNumber

            self.fyndOrderId = fyndOrderId

            self.storeInvoiceId = storeInvoiceId

            self.affiliateShipmentId = affiliateShipmentId

            self.packagingType = packagingType

            self.pdfLinks = pdfLinks

            self.previousShipmentId = previousShipmentId

            self.meta = meta

            self.deliveryAddressJson = deliveryAddressJson

            self.sdType = sdType

            self.createdAt = createdAt

            self.parentType = parentType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            billingAddressJson = try container.decode(BillingAddress1.self, forKey: .billingAddressJson)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            do {
                creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            handOverContactJson = try container.decode(ShipmentHandOverCustomerContact.self, forKey: .handOverContactJson)

            fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

            do {
                parentId = try container.decode(String.self, forKey: .parentId)

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

            do {
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            do {
                previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(ShipmentMeta.self, forKey: .meta)

            deliveryAddressJson = try container.decode(DeliveryAddress.self, forKey: .deliveryAddressJson)

            sdType = try container.decode(String.self, forKey: .sdType)

            createdAt = try container.decode(Int.self, forKey: .createdAt)

            do {
                parentType = try container.decode(String.self, forKey: .parentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(billingAddressJson, forKey: .billingAddressJson)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encode(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(handOverContactJson, forKey: .handOverContactJson)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encode(parentId, forKey: .parentId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encode(storeInvoiceId, forKey: .storeInvoiceId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(deliveryAddressJson, forKey: .deliveryAddressJson)

            try? container.encodeIfPresent(sdType, forKey: .sdType)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(parentType, forKey: .parentType)
        }
    }
}
