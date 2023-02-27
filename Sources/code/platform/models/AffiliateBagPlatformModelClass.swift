

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var hsnCodeId: String

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var sku: String

        public var discount: Double

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var priceMarked: Double

        public var quantity: Int

        public var storeId: Int

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var companyId: Int

        public var transferPrice: Int

        public var itemId: Int

        public var id: String

        public var avlQty: Int

        public var itemSize: String

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case sku

            case discount

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case quantity

            case storeId = "store_id"

            case identifier

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case transferPrice = "transfer_price"

            case itemId = "item_id"

            case id = "_id"

            case avlQty = "avl_qty"

            case itemSize = "item_size"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.sku = sku

            self.discount = discount

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.quantity = quantity

            self.storeId = storeId

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.transferPrice = transferPrice

            self.itemId = itemId

            self.id = id

            self.avlQty = avlQty

            self.itemSize = itemSize

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}
