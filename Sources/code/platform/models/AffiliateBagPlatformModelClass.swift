

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: OrderManage
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var priceEffective: Double

        public var itemId: Int

        public var sku: String

        public var pdfLinks: MarketPlacePdf?

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var discount: Double

        public var sellerIdentifier: String

        public var id: String

        public var storeId: Int

        public var quantity: Int

        public var avlQty: Int

        public var modifiedOn: String

        public var itemSize: String

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case identifier

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case sku

            case pdfLinks = "pdf_links"

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case storeId = "store_id"

            case quantity

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.sku = sku

            self.pdfLinks = pdfLinks

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.storeId = storeId

            self.quantity = quantity

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
