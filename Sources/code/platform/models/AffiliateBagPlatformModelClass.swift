

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var amountPaid: Double

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var priceEffective: Double

        public var itemSize: String

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var itemId: Int

        public var quantity: Int

        public var sku: String

        public var id: String

        public var storeId: Int

        public var transferPrice: Int

        public var discount: Double

        public var avlQty: Int

        public var affiliateStoreId: String

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case identifier

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case quantity

            case sku

            case id = "_id"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case discount

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.quantity = quantity

            self.sku = sku

            self.id = id

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.discount = discount

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}
