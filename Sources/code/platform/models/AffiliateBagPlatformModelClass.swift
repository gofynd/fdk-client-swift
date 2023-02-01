

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var itemId: Int

        public var companyId: Int

        public var modifiedOn: String

        public var amountPaid: Double

        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var fyndStoreId: String

        public var avlQty: Int

        public var discount: Double

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var transferPrice: Int

        public var storeId: Int

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case sku

            case itemId = "item_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case unitPrice = "unit_price"

            case identifier

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case discount

            case id = "_id"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.itemId = itemId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.discount = discount

            self.id = id

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
