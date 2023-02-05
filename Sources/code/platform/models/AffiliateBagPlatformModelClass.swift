

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var itemSize: String

        public var unitPrice: Double

        public var modifiedOn: String

        public var priceEffective: Double

        public var transferPrice: Int

        public var avlQty: Int

        public var identifier: [String: Any]

        public var itemId: Int

        public var storeId: Int

        public var priceMarked: Double

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var companyId: Int

        public var fyndStoreId: String

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case sku

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case identifier

            case itemId = "item_id"

            case storeId = "store_id"

            case priceMarked = "price_marked"

            case discount

            case affiliateMeta = "affiliate_meta"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case pdfLinks = "pdf_links"

            case quantity

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.identifier = identifier

            self.itemId = itemId

            self.storeId = storeId

            self.priceMarked = priceMarked

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
