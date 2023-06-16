

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var quantity: Int

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var sku: String

        public var amountPaid: Double

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var storeId: Int

        public var sellerIdentifier: String

        public var companyId: Int

        public var id: String

        public var itemId: Int

        public var discount: Double

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var itemSize: String

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case quantity

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case sku

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case id = "_id"

            case itemId = "item_id"

            case discount

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case identifier

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.quantity = quantity

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.id = id

            self.itemId = itemId

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var quantity: Int

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var sku: String

        public var amountPaid: Double

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var storeId: Int

        public var sellerIdentifier: String

        public var companyId: Int

        public var id: String

        public var itemId: Int

        public var discount: Double

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var itemSize: String

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case quantity

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case sku

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case id = "_id"

            case itemId = "item_id"

            case discount

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case identifier

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.quantity = quantity

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.id = id

            self.itemId = itemId

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}
