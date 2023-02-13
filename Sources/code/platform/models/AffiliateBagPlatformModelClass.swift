

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var companyId: Int

        public var sku: String

        public var itemId: Int

        public var deliveryCharge: Double

        public var sellerIdentifier: String

        public var storeId: Int

        public var discount: Double

        public var modifiedOn: String

        public var fyndStoreId: String

        public var priceEffective: Double

        public var transferPrice: Int

        public var hsnCodeId: String

        public var unitPrice: Double

        public var itemSize: String

        public var priceMarked: Double

        public var id: String

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case identifier

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case companyId = "company_id"

            case sku

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case discount

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case id = "_id"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.companyId = companyId

            self.sku = sku

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.id = id

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
