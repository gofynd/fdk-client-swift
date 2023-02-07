

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var unitPrice: Double

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var discount: Double

        public var transferPrice: Int

        public var quantity: Int

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var itemSize: String

        public var sku: String

        public var itemId: Int

        public var amountPaid: Double

        public var priceEffective: Double

        public var storeId: Int

        public var avlQty: Int

        public var affiliateStoreId: String

        public var id: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case identifier

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case discount

            case transferPrice = "transfer_price"

            case quantity

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case sku

            case itemId = "item_id"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.sku = sku

            self.itemId = itemId

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
