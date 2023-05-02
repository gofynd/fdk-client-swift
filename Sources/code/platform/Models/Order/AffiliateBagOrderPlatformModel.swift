

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemId: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public var discount: Double

        public var amountPaid: Double

        public var id: String

        public var itemSize: String

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var transferPrice: Int

        public var storeId: Int

        public var companyId: Int

        public var sku: String

        public var priceEffective: Double

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case amountPaid = "amount_paid"

            case id = "_id"

            case itemSize = "item_size"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case companyId = "company_id"

            case sku

            case priceEffective = "price_effective"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemId = itemId

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.amountPaid = amountPaid

            self.id = id

            self.itemSize = itemSize

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.companyId = companyId

            self.sku = sku

            self.priceEffective = priceEffective

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sku = try container.decode(String.self, forKey: .sku)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemId: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public var discount: Double

        public var amountPaid: Double

        public var id: String

        public var itemSize: String

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var transferPrice: Int

        public var storeId: Int

        public var companyId: Int

        public var sku: String

        public var priceEffective: Double

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case amountPaid = "amount_paid"

            case id = "_id"

            case itemSize = "item_size"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case companyId = "company_id"

            case sku

            case priceEffective = "price_effective"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemId = itemId

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.amountPaid = amountPaid

            self.id = id

            self.itemSize = itemSize

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.companyId = companyId

            self.sku = sku

            self.priceEffective = priceEffective

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sku = try container.decode(String.self, forKey: .sku)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
