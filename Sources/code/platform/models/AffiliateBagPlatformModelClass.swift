

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var hsnCodeId: String

        public var amountPaid: Double

        public var sku: String

        public var priceMarked: Double

        public var itemId: Int

        public var avlQty: Int

        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var storeId: Int

        public var transferPrice: Int

        public var id: String

        public var itemSize: String

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var discount: Double

        public var quantity: Int

        public var modifiedOn: String

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case amountPaid = "amount_paid"

            case sku

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case id = "_id"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case discount

            case quantity

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.hsnCodeId = hsnCodeId

            self.amountPaid = amountPaid

            self.sku = sku

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.id = id

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.discount = discount

            self.quantity = quantity

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
